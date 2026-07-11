-- ========================================
-- Organization Table
-- ========================================

CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

-- ========================================
-- Service Project Table
-- ========================================
CREATE TABLE service_project (
	project_id SERIAL PRIMARY KEY,
	organization_id INTEGER NOT NULL,
	title VARCHAR(150) NOT NULL,
	description TEXT NOT NULL,
	project_location VARCHAR(150) NOT NULL,
	project_date DATE NOT NULL,
	FOREIGN KEY (organization_id) REFERENCES organization(organization_id)
);

-- ========================================
-- Inserting Data into Organization Table
-- ========================================
INSERT INTO organization (
    name,
    description,
    contact_email,
    logo_filename
)
VALUES
(
    'BrightFuture Builders',
    'A nonprofit focused on improving community infrastructure through sustainable construction projects.',
    'info@brightfuturebuilders.org',
    'brightfuture-logo.png'
),
(
    'GreenHarvest Growers',
    'An urban farming collective promoting food sustainability and education in local neighborhoods.',
    'contact@greenharvest.org',
    'greenharvest-logo.png'
),
(
    'UnityServe Volunteers',
    'A volunteer coordination group supporting local charities and service initiatives.',
    'hello@unityserve.org',
    'unityserve-logo.png'
);


-- ========================================
-- Inserting Data into Service Project Table
-- ========================================

INSERT INTO service_project (
    organization_id,
    title,
    description,
    location,
    date_project
)
VALUES
-- BrightFuture Builders (Organization ID = 1)
(
    1,
    'Community Center Renovation',
    'Renovate a local community center to provide a safer and more welcoming environment.',
    'Salt Lake City, UT',
    '2026-08-15'
),
(
    1,
    'Playground Construction',
    'Build a new playground for children in an underserved neighborhood.',
    'Boise, ID',
    '2026-09-05'
),
(
    1,
    'Bridge Repair Project',
    'Repair a pedestrian bridge used by the local community.',
    'Denver, CO',
    '2026-09-20'
),
(
    1,
    'School Painting Day',
    'Volunteer to repaint classrooms and hallways at an elementary school.',
    'Phoenix, AZ',
    '2026-10-03'
),
(
    1,
    'Neighborhood Cleanup',
    'Remove trash and improve public spaces in residential neighborhoods.',
    'Las Vegas, NV',
    '2026-10-17'
),

-- GreenHarvest Growers (Organization ID = 2)
(
    2,
    'Community Garden Expansion',
    'Expand an existing community garden with additional planting beds.',
    'Portland, OR',
    '2026-08-22'
),
(
    2,
    'Tree Planting Event',
    'Plant native trees to improve urban green spaces.',
    'Seattle, WA',
    '2026-09-12'
),
(
    2,
    'Urban Farming Workshop',
    'Teach residents how to grow vegetables in small urban spaces.',
    'San Diego, CA',
    '2026-09-26'
),
(
    2,
    'School Vegetable Garden',
    'Create a vegetable garden for students to learn sustainable agriculture.',
    'Sacramento, CA',
    '2026-10-10'
),
(
    2,
    'Farmers Market Volunteer Day',
    'Support local farmers by organizing a weekly community market.',
    'Eugene, OR',
    '2026-10-24'
),

-- UnityServe Volunteers (Organization ID = 3)
(
    3,
    'Food Bank Distribution',
    'Organize volunteers to distribute food to families in need.',
    'Dallas, TX',
    '2026-08-18'
),
(
    3,
    'Senior Center Assistance',
    'Provide companionship and assistance to senior citizens.',
    'Austin, TX',
    '2026-09-02'
),
(
    3,
    'School Supply Drive',
    'Collect and distribute school supplies for underprivileged students.',
    'Houston, TX',
    '2026-09-16'
),
(
    3,
    'Homeless Shelter Meal Service',
    'Prepare and serve meals at a local homeless shelter.',
    'San Antonio, TX',
    '2026-10-01'
),
(
    3,
    'Holiday Toy Donation',
    'Collect and distribute toys to children during the holiday season.',
    'Fort Worth, TX',
    '2026-11-21'
);