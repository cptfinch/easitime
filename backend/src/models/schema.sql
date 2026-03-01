-- EasiTime Database Schema (Stub)
-- PostgreSQL / Supabase

-- TODO: Implement all tables

-- ============================================================
-- MEMBERS
-- ============================================================
CREATE TABLE IF NOT EXISTS members (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email TEXT UNIQUE,
    display_name TEXT NOT NULL,
    bio TEXT,
    avatar_url TEXT,
    location_lat DECIMAL(10, 7),
    location_lng DECIMAL(10, 7),
    postcode TEXT,
    phone TEXT,
    dbs_checked BOOLEAN DEFAULT FALSE,
    dbs_check_date DATE,
    joined_at TIMESTAMPTZ DEFAULT NOW(),
    last_active_at TIMESTAMPTZ,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB DEFAULT '{}'
);

-- ============================================================
-- COMMUNITIES
-- ============================================================
CREATE TABLE IF NOT EXISTS communities (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    slug TEXT UNIQUE NOT NULL,
    description TEXT,
    location TEXT,
    lets_enabled BOOLEAN DEFAULT FALSE,
    lets_currency_name TEXT, -- e.g., "Lanes"
    lets_currency_symbol TEXT, -- e.g., "LAN"
    lets_default_credit_limit DECIMAL(10, 2) DEFAULT 50.00,
    tim_max_balance DECIMAL(10, 2) DEFAULT 100.00,
    tim_starter_credits DECIMAL(10, 2) DEFAULT 2.00,
    tim_expiry_months INTEGER, -- NULL = no expiry
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- COMMUNITY MEMBERSHIP
-- ============================================================
CREATE TABLE IF NOT EXISTS community_members (
    community_id UUID REFERENCES communities(id),
    member_id UUID REFERENCES members(id),
    role TEXT DEFAULT 'member', -- member, coordinator, admin
    joined_at TIMESTAMPTZ DEFAULT NOW(),
    PRIMARY KEY (community_id, member_id)
);

-- ============================================================
-- SKILLS / SERVICES
-- ============================================================
CREATE TABLE IF NOT EXISTS skills (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT, -- e.g., "home", "garden", "transport", "companionship", "professional"
    description TEXT
);

CREATE TABLE IF NOT EXISTS member_skills (
    member_id UUID REFERENCES members(id),
    skill_id UUID REFERENCES skills(id),
    type TEXT NOT NULL, -- 'offer' or 'need'
    description TEXT,
    availability TEXT, -- e.g., "weekday mornings"
    PRIMARY KEY (member_id, skill_id, type)
);

-- ============================================================
-- EXCHANGES (Time Credits)
-- ============================================================
CREATE TABLE IF NOT EXISTS exchanges (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    community_id UUID REFERENCES communities(id),
    provider_id UUID REFERENCES members(id), -- gives service, earns credits
    receiver_id UUID REFERENCES members(id), -- receives service, spends credits
    skill_id UUID REFERENCES skills(id),
    description TEXT,
    hours DECIMAL(5, 2) NOT NULL, -- e.g., 1.50 = 1hr 30min
    status TEXT DEFAULT 'pending', -- pending, provider_confirmed, receiver_confirmed, completed, disputed, cancelled
    provider_confirmed_at TIMESTAMPTZ,
    receiver_confirmed_at TIMESTAMPTZ,
    completed_at TIMESTAMPTZ,
    scheduled_for TIMESTAMPTZ,
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- TIME CREDIT LEDGER (Double-entry)
-- ============================================================
CREATE TABLE IF NOT EXISTS tim_ledger (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    member_id UUID REFERENCES members(id),
    community_id UUID REFERENCES communities(id),
    exchange_id UUID REFERENCES exchanges(id),
    amount DECIMAL(10, 2) NOT NULL, -- positive = credit, negative = debit
    balance_after DECIMAL(10, 2) NOT NULL,
    type TEXT NOT NULL, -- 'earned', 'spent', 'starter', 'expired', 'adjustment'
    description TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- LETS MUTUAL CREDIT LEDGER
-- ============================================================
CREATE TABLE IF NOT EXISTS lets_ledger (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    member_id UUID REFERENCES members(id),
    community_id UUID REFERENCES communities(id),
    counterparty_id UUID REFERENCES members(id),
    amount DECIMAL(10, 2) NOT NULL, -- positive = credit, negative = debit
    balance_after DECIMAL(10, 2) NOT NULL, -- can be negative
    description TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- SOCIAL PRESCRIBING REFERRALS
-- ============================================================
CREATE TABLE IF NOT EXISTS referrals (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    member_id UUID REFERENCES members(id),
    community_id UUID REFERENCES communities(id),
    referrer_name TEXT, -- link worker name
    referrer_org TEXT, -- GP practice / PCN
    referral_reason TEXT,
    needs_assessment TEXT,
    consent_given BOOLEAN DEFAULT FALSE,
    status TEXT DEFAULT 'new', -- new, active, completed, withdrawn
    outcomes JSONB DEFAULT '{}', -- wellbeing scores, engagement metrics
    referred_at TIMESTAMPTZ DEFAULT NOW(),
    first_exchange_at TIMESTAMPTZ,
    last_review_at TIMESTAMPTZ
);

-- ============================================================
-- ON-CHAIN ANCHORING (for blockchain settlement)
-- ============================================================
CREATE TABLE IF NOT EXISTS chain_anchors (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    batch_start TIMESTAMPTZ NOT NULL,
    batch_end TIMESTAMPTZ NOT NULL,
    merkle_root TEXT NOT NULL, -- hash of all transactions in batch
    chain TEXT, -- 'polygon', 'stellar', etc.
    tx_hash TEXT, -- on-chain transaction hash
    status TEXT DEFAULT 'pending', -- pending, submitted, confirmed, failed
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- INDEXES
-- ============================================================
-- TODO: Add appropriate indexes for query performance
