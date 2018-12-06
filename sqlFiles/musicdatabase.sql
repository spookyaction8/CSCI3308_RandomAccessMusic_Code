--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: altrocksongs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.altrocksongs (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'Alternative Rock'::text
);


ALTER TABLE public.altrocksongs OWNER TO postgres;

--
-- Name: countrysongs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countrysongs (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'Country'::text
);


ALTER TABLE public.countrysongs OWNER TO postgres;

--
-- Name: dubstep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dubstep (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'Dubstep'::text
);


ALTER TABLE public.dubstep OWNER TO postgres;

--
-- Name: edmdance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.edmdance (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'EDM'::text
);


ALTER TABLE public.edmdance OWNER TO postgres;

--
-- Name: hardrock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hardrock (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'Hard Rock'::text
);


ALTER TABLE public.hardrock OWNER TO postgres;

--
-- Name: hiphop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hiphop (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'Hip Hop'::text
);


ALTER TABLE public.hiphop OWNER TO postgres;

--
-- Name: lofi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lofi (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'LoFi'::text
);


ALTER TABLE public.lofi OWNER TO postgres;

--
-- Name: pop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pop (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'Pop'::text
);


ALTER TABLE public.pop OWNER TO postgres;

--
-- Name: rap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rap (
    name text NOT NULL,
    artist text NOT NULL,
    genre text DEFAULT 'Rap'::text
);


ALTER TABLE public.rap OWNER TO postgres;

--
-- Name: songdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.songdata (
    songid integer NOT NULL,
    songname text NOT NULL,
    songartist text NOT NULL,
    songgenre character(30),
    songalbum text,
    clickspersong integer,
    avgrating real,
    ratingcount integer,
    votes integer
);


ALTER TABLE public.songdata OWNER TO postgres;

--
-- Name: songdata_songid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.songdata_songid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songdata_songid_seq OWNER TO postgres;

--
-- Name: songdata_songid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.songdata_songid_seq OWNED BY public.songdata.songid;


--
-- Name: songid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songdata ALTER COLUMN songid SET DEFAULT nextval('public.songdata_songid_seq'::regclass);


--
-- Data for Name: altrocksongs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.altrocksongs (name, artist, genre) FROM stdin;
Smells Like Teen Spirit	Nirvana	Alternative Rock
Love Will Tear Us Apart	Joy Division	Alternative Rock
Radio Free Europe	R.E.M.	Alternative Rock
Blue Monday	New Order	Alternative Rock
How Soon is Now?	The Smiths	Alternative Rock
Once in a Lifetime	Talking Heads	Alternative Rock
Teen Age Riot	Sonic Youth	Alternative Rock
Blister in the Sun	Violent Femmes	Alternative Rock
Jeremy	Pearl Jam	Alternative Rock
Monkey Gone to Heaven	Pixies	Alternative Rock
Under the Bridge	Red Hot Chili Peppers	Alternative Rock
Black Hole Sun	Soundgarden	Alternative Rock
Closer	Nine Inch Nails	Alternative Rock
Losing My Religion	R.E.M.	Alternative Rock
Wonderwall	Oasis	Alternative Rock
Just Like Heaven	The Cure	Alternative Rock
Cannonball	The Breeders	Alternative Rock
Sunday Bloody Sunday	U2	Alternative Rock
Loser	Beck	Alternative Rock
Creep	Radiohead	Alternative Rock
Hallelujah	Jeff Buckley	Alternative Rock
Bela Lugosis Dead	Bauhaus	Alternative Rock
Come As You Are	Nirvana	Alternative Rock
Personal Jesus	Depeche Mode	Alternative Rock
Waiting Room	Fugazi	Alternative Rock
Here Comes Your Man	Pixies	Alternative Rock
Paranoid Android	Radiohead	Alternative Rock
There is a Light that Never Goes Out	The Smiths	Alternative Rock
Song 2	Blur	Alternative Rock
1979	The Smashing Pumpkins	Alternative Rock
Common People	Pulp	Alternative Rock
There She Goes	The Las	Alternative Rock
Running Up That Hill (A Deal With God)	Kate Bush	Alternative Rock
The Killing Moon	Echo and the Bunnymen	Alternative Rock
I Still Havent Found What Im Looking For	U2	Alternative Rock
Bitter Sweet Symphony	The Verve	Alternative Rock
Touch Me Im Sick	Mudhoney	Alternative Rock
Everlong	Foo Fighters	Alternative Rock
Atmosphere	Joy Division	Alternative Rock
All Apologies	Nirvana	Alternative Rock
Cut Your Hair	Pavement	Alternative Rock
Enjoy the Silence	Depeche Mode	Alternative Rock
Lovesong	The Cure	Alternative Rock
Would?	Alice in Chains	Alternative Rock
What I Got	Sublime	Alternative Rock
This Charming Man	The Smiths	Alternative Rock
Seven Nation Army	The White Stripes	Alternative Rock
Alive	Pearl Jam 	Alternative Rock
Jesus Christ Pose	Soundgarden	Alternative Rock
Radio Radio	Elvis Costello	Alternative Rock
Tonight Tonight	The Smashing Pumpkins 	Alternative Rock
Fake Plastic Trees	Radiohead	Alternative Rock
The One I Love	R.E.M.	Alternative Rock
Buddy Holly	Weezer	Alternative Rock
Live Forever	Oasis	Alternative Rock
New Years Day	U2 	Alternative Rock
Head Like a Hole	Nine Inch Nails	Alternative Rock
Plush	Stone Temple Pilots	Alternative Rock
I Wanna Be Adored	The Stone Roses	Alternative Rock
Just Like Honey	The Jesus and Mary Chain	Alternative Rock
Bastards of Young	The Replacements	Alternative Rock
Lithium	Nirvana	Alternative Rock
Burning Down the House	Talking Heads	Alternative Rock
Dear God	XTC	Alternative Rock
Sabotage	Beastie Boys	Alternative Rock
Alison	Elvis Costello	Alternative Rock
Boys Dont Cry	The Cure	Alternative Rock
Beds Are Burning	Midnight Oil	Alternative Rock
So Alive	Love and Rockets	Alternative Rock
Today	The Smashing Pumpkins	Alternative Rock
Freak Scene	Dinosaur Jr.	Alternative Rock
Under the Milky Way	The Church 	Alternative Rock
Shes Lost Control	Joy Division	Alternative Rock
Karma Police	Radiohead	Alternative Rock
Give It Away	Red Hot Chili Peppers	Alternative Rock
Birdhouse in Your Soul	They Might Be Giants	Alternative Rock
Thats Entertainment	The Jam	Alternative Rock
Kool Thing	Sonic Youth	Alternative Rock
When I Come Around	Green Day	Alternative Rock
Where is My Mind?	Pixies	Alternative Rock
Man in the Box	Alice in Chains	Alternative Rock
One	U2	Alternative Rock
True Faith	New Order	Alternative Rock
Epic	Faith No More	Alternative Rock
Only Shallow	My Bloody Valentine	Alternative Rock
Fairytale of New York	The Pogues	Alternative Rock
Summer Babe	Pavement	Alternative Rock
Academy Fight Song	Mission of Burma	Alternative Rock
Celebrated Summer	Husker Du	Alternative Rock
Loaded	Primal Scream	Alternative Rock
No Rain	Blind Melon	Alternative Rock
Shine	Collective Soul	Alternative Rock
Float On	Modest Mouse	Alternative Rock
Left of the Dial	The Replacements	Alternative Rock
I Melt With You	Modern English	Alternative Rock
Better Man	Pearl Jam	Alternative Rock
Nothing Compares 2 U	Sinead O Connor	Alternative Rock
Bulls on Parade	Rage Against the Machine	Alternative Rock
Dont Speak	No Doubt	Alternative Rock
Chloe Dancer/Crown of Thorns	Mother Love Bone	Alternative Rock
\.


--
-- Data for Name: countrysongs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countrysongs (name, artist, genre) FROM stdin;
Stand by Your Man	Tammy Wynette	Country
He Stopped Loving Her Today	George Jones	Country
Crazy	Patsy Cline . Willie Nelson	Country
Ring of Fire	Johnny Cash	Country
Your Cheatin' Heart	Hank Williams	Country
Friends in Low Places	Garth Brooks	Country
I Fall to Pieces	Patsy Cline	Country
Galveston	Glen Campbell	Country
Behind Closed Doors	Charlie Rich	Country
Mommas Don't Let Your Babies Grow Up to Be Cowboys	Waylon Jennings . Willie Nelson	Country
Blue Moon of Kentucky	Bill Monroe	Country
Amarillo by Morning	George Strait	Country
Coal Miner's Daughter	Loretta Lynn	Country
The Dance	Garth Brooks	Country
Forever and Ever Amen	Randy Travis	Country
I Will Always Love You	Dolly Parton	Country
Hello Darlin	Conway Twitty	Country
Country Roads	John Denver	Country
Hey Good Lookin	Hank Williams	Country
I Am a Man of Constant Sorrow	Foggy Bottom Boys	Country
Boot Scootin' Boogie	Brooks . Dunn	Country
I Can't Stop Loving You	Ray Charles	Country
Independence Day	Martina McBride	Country
It Wasn't God Who Made Honky Tonk Angels	Kitty Wells	Country
On the Other Hand	Randy Travis	Country
Walking the Floor Over You	Ernest Tubb	Country
Coat of Many Colors	Dolly Parton	Country
Act Naturally	Buck Owens	Country
Mama He's Crazy	The Judds	Country
If You've Got the Money I've Got the Time	Lefty Frizzell	Country
Kiss an Angel Good Morning	Charlie Pride	Country
Family Tradition	Hank Williams Jr.	Country
Go Rest High on That Mountain	Vince Gill	Country
Lovesick Blues	Hank Williams	Country
Don't Rock the Jukebox	Alan Jackson	Country
Tennessee Waltz	Patty Page	Country
When You Say Nothing at All	Alison Krauss	Country
God Bless the USA	Lee Greenwood	Country
Green Grass of Home	Porter Wagoner	Country
It's Your Love	Tim McGraw	Country
There Stands the Glass	Webb Pierce	Country
Devil Went Down to Georgia	Charlie Daniels	Country
Chiseled in Stone	Vern Gosdin	Country
Don't Toss Us Away	Patty Loveless	Country
A Boy Named Sue	Johnny Cash	Country
You Are My Sunshine	Gov. Jimmy Davis	Country
Flowers on the Wall	Statler Brothers	Country
Strawberry Wine	Deana Carter	Country
Good Hearted Woman	Waylon Jennings	Country
You're Still the One	Shania Twain	Country
My Home's in Alabama	Alabama	Country
Is There Life Out There	Reba McEntire	Country
She's in Love With the Boy	Trisha Yearwood	Country
Smoky Mountain Rain	Ronnie Milsap	Country
Should've Been a Cowboy	Toby Keith	Country
Rose Garden	Lynn Anderson	Country
Please Remember Me	Tim McGraw	Country
Blue	LeAnn Rimes	Country
Before the Next Teardrop Falls	Freddie Fender	Country
Passionate Kisses	Mary Chapin Carpenter	Country
Have I Told You Lately That I Love You	Gene Autry	Country
Here's a Quarter	Travis Tritt	Country
He'll Have to Go	Jim Reeves	Country
Seven Year Ache	Rosanne Cash	Country
Sunday Morning Coming Down	Johnny Cash . Kris Kristofferson	Country
Take this Job and Shove It	Johnny PayCheck	Country
Something in Red	Lorrie Morgan	Country
Foggy Mountain Breakdown	Flatt . Scruggs	Country
I'd Be Better Off in a Pine Box	Doug Stone	Country
Amazed	Lonestar	Country
Faded Love	Bob Wills	Country
Back in the Saddle Again	Gene Autry	Country
Killin' Time	Clint Black	Country
Okie from Muskogee	Merle Haggard	Country
Wide Open Spaces	Dixie Chicks	Country
Blue Eyes Crying in the Rain	Willie Nelson	Country
The Chair	George Strait	Country
Folsom Prison Blues	Johnny Cash	Country
The Gambler	Kenny Rogers	Country
Fancy	Reba McEntire	Country
Where Were You (When the World Stopped Turning)	Alan Jackson	Country
I'm So Lonesome I Could Cry	Hank Williams Sr.	Country
I Hope You Dance	Lee Ann Womack	Country
I Walk the Line	Johnny Cash	Country
Rhinestone Cowboy	Glen Campbell	Country
Always on My Mind	Willie Nelson	Country
Harper Valley PTA	Jeannie C. Riley	Country
D-I-V-O-R-C-E	Tammy Wynette	Country
Will the Circle be Unbroken	Nitty Gritty Dirt Band	Country
King of the Road	Roger Miller	Country
Breathe	Faith Hill	Country
Make the World Go Away	Eddy Arnold	Country
Hello Walls	Faron Young	Country
Sweet Dreams	Patsy Cline	Country
El Paso	Marty Robbins	Country
Delta Dawn	Tanya Tucker	Country
When I Call Your Name	Vince Gill	Country
Guitars & Cadillacs	Dwight Yoakam	Country
Desperado	The Eagles	Country
Don't Come Home A Drinkin'	Loretta Lynn	Country
\.


--
-- Data for Name: dubstep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dubstep (name, artist, genre) FROM stdin;
A Song Of Fire and Ice (Sarah Stone Vocal Edit)	Just A Gent	Dubstep
A Thousand Times	Trolley Snatcha	Dubstep
Around The Block (Datsik Remix)	Pretty Lights & Talib Kweli & Datsik	Dubstep
Bad Boy Flow (Protohype Dubstep VIP)	Protohype & ETC!ETC!	Dubstep
Beam (Skrux Remix)	MakO & Angel Taylor & Skrux	Dubstep
Before I Fall	Zanski & Ibe	Dubstep
Blow Your Speakers	Filth Collins	Dubstep
Bring The Rain (AFK Remix)	Candyland & AFK 	Dubstep
Bring the Rain (heRobust remix)	Candyland & heRobust	Dubstep
Candy	Zanski & Bombs & Bottles	Dubstep
Catch Me As I Fall (Koa Remix)	Melissa Pixel & Koa	Dubstep
Chainsaw (Direktor Remix)	Prostecutioner & Direktor	Dubstep
Chasing Ghosts	Collin McLoughlin	Dubstep
Chemicals	Rekoil	Dubstep
Chiaroscuro (Vaski Remix)	Sound Remedy & Vaski 	Dubstep
Chiaroscuro	Sound Remedy	Dubstep
Cobra	Vaski	Dubstep
Coolest Cat	Cyran	Dubstep
Deze	JVN	Dubstep
Diamond Sky (Skrux Remix)	Elliot Berger & Laura Brehm & Skrux	Dubstep
Dope Arcade (MitiS Remix)	Ascension & MitiS	Dubstep
Fathom	Frequent	Dubstep
Find You (PRFFTT & Svyable Remix)	Skrux & Felxprod & PRFFTT & Svyable	Dubstep
For This Moment	Spag Heddy	Dubstep
For You	Killabyte	Dubstep
Fragments (Clark Kent Remix)	Jaymes Young & Clark Kent	Dubstep
Fuck Trap	Kurfew	Dubstep
Game On	Timeline	Dubstep
Get Wild (MUST DIE! Remix)	Candyland & MUST DIE!	Dubstep
Gonna Move	Karetus	Dubstep
Good Fella	EXPLQIT	Dubstep
Grinder	Walka	Dubstep
Gunshot	ChooKy	Dubstep
Hand Trigga	Bobby Duque & Mr. Welch	Dubstep
Hanging On (Myriad Remix)	Thallie Ann Seenyen & Myriad	Dubstep
Heavy	Filthzilla	Dubstep
Home (RoughMath Remix)	Jarvis & Ivy Jayne & RoughMath	Dubstep
Home (SirensCeol Remix)	Jarvis & Ivy Jayne & SirensCeol	Dubstep
Humanity	Phasmo	Dubstep
Hypnotizing (Vocal VIP)	SPL	Dubstep
If U Feel	Spag Heddy	Dubstep
Implode	Subtex	Dubstep
Kabuki	Tisoki	Dubstep
Knockout	Tisoki	Dubstep
Lawless	Pegboard Nerds	Dubstep
Lift Me	Inaki	Dubstep
Lights Out	Getter	Dubstep
Lucid	Bryzone	Dubstep
Medieval Dub VIP	Dub Scout	Dubstep
Mellow	PADU	Dubstep
Mercurial	Anna Yvette	Dubstep
Minions	KromeEdge	Dubstep
Misery	Crystal Drop	Dubstep
Molly's Song	Beyond Ominous	Dubstep
Moments (Ennui Remix)	Mutrix & Charity Vance & Vena Cava & Ennui 	Dubstep
Mr. French	Mantis	Dubstep
Mushroom Factory	Panda Eyes	Dubstep
Nightmare	SirensCeol & Sean Dee	Dubstep
Nobody Cares	Dub Bangers & EH!DE	Dubstep
Nosebleed	Jarvis	Dubstep
One Desire	Collin McLoughlin 	Dubstep
Only You (Darphesh Remix)	Tisoki & Shoshki & Darphesh	Dubstep
Open Your Eyes	Case and Point & Lara Woolf	Dubstep
Pandora	REDNEK	Dubstep
Papa Smurf's Evening Riddim	Obscenity	Dubstep
Perfect Timing (Stick Up Kids)	Figure	Dubstep
Phantom	Des McMahon	Dubstep
Phoenix	Elim & Mitchell Leighton	Dubstep
Planet Online (Culprate Remix)	Neosignal & Culprate	Dubstep
Renegade	David Butterfield	Dubstep
Roots (I AM ROBOT Remix)	Mashur & Kevlar & I AM ROBOT	Dubstep
Run	Secoya	Dubstep
Shooting Star	Collin McLoughlin	Dubstep
Shout Me!	Dorris & Lady Killa & Sweeney	Dubstep
Sine Time	Spag Heddy	Dubstep
Skeleton Key (RUN DMT Remix)	Love Inks & RUN DMT	Dubstep
Standing On A Hill	Flux Pavilion	Dubstep
Stardust Redux (Crywolf Remix)	Minnesota & Crywolf	Dubstep
Stethoscope (Squidthief Remix)	Dub Scout & Squidthief	Dubstep
Stinger (Spag Heddy Remix)	Oliver Heldens & Spag Heddy	Dubstep
Stratos	Stabby & Poizon	Dubstep
Sunrise	HiLo	Dubstep
Surveillance Society	TRUTH	Dubstep
Swashbuckle	LoBounce & Flinch	Dubstep
Take Me Away	Melodies Influencing Actions	Dubstep
Tangent	Labrat & Downsquarez & Jamburglar	Dubstep
The Art of Rise and Fall	Castor Troy	Dubstep
The Traveller	Warriyo	Dubstep
The Wolf (Tetrix Bass Remix)	Felxprod & Thallie Ann Seenyen & Tetrix Bass	Dubstep
The Wolf	Felxprod & Thallie Ann Seenyen	Dubstep
Trigger	Kezwik & Mel Presson	Dubstep
Undercover (Dilemn Remix)	Bluescreens & Dilemn	Dubstep
Unlimited Pancakes	SirensCeol	Dubstep
Voices	Urbanstep	Dubstep
We Are	PRFFTT & Svyable & Crywolf	Dubstep
When The Light Shines	M-one & Ngaire Blackman	Dubstep
Wicked (Jantsen Remix)	Karetus & Clinton Sly & Jantsen	Dubstep
Wut	THE UN1K	Dubstep
Ye Olde	Cyran	Dubstep
Your Addiction Duelle (Panda Eyes Remix)	CiRRO & Panda Eyes	Dubstep
\.


--
-- Data for Name: edmdance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.edmdance (name, artist, genre) FROM stdin;
Axwell & Ingrosso	I Love You	EDMDance
deadmau5 & Kaskade	I Remember	EDMDance
SOPHIE	Hard	EDMDance
David Guetta & Sia	Titanium	EDMDance
Wiwek & Alvaro & MC Spyder	Boomshakatak	EDMDance
Aazar	Rundat	EDMDance
ATB & Dash Berlin	Apollo Road	EDMDance
Alan Walker	Faded	EDMDance
Above & Beyond	Can't Sleep	EDMDance
Dillon Francis	Masta Blasta	EDMDance
Usher & Pitbull	DJ Got Us Fallin' in Love	EDMDance
OMI	Cheerleader (Felix Jaehn Remix)	EDMDance
DEV & The Cataracs	Bass Down Low	EDMDance
Shawn Wasabi & YDG	Burnt Rice	EDMDance
Young L & Hudson Mohawke	Loud Pockets (Hudson Mohawke Remix)	EDMDance
Lido	Money	EDMDance
Blue Foundation & Zeds Dead	Eyes On Fire (Zeds Dead Remix)	EDMDance
Anna Lunoe	BDD	EDMDance
Cascada	Everytime We Touch	EDMDance
Armin van Buuren & Avicii	Drowning (Avicii Remix)	EDMDance
Clockwork	Surge feat Wynter Gordon	EDMDance
Destructo	Higher	EDMDance
Brodinski & LOUISAHHH!	Nobody Rules the Streets	EDMDance
Taio Cruz	Dynamite	EDMDance
The Chainsmokers	Don't Let Me Down	EDMDance
Avicii	Silhouettes	EDMDance
Knife Party	Internet Friends	EDMDance
Zedd	Clarity	EDMDance
Major Lazer & Mija	B2GETHER (Mija Remix)	EDMDance
Keys N Krates	Dum Dee Dum	EDMDance
Saint & UNIIQU3	Yo I'm Lit	EDMDance
CETANA & moistbreezy	Running	EDMDance
Ellie Goulding	Lights	EDMDance
Unicorn Kid	Need U	EDMDance
Flosstradamus	Rollup Baauer Remix	EDMDance
Bassnectar	Magical World	EDMDance
Lorde & Diplo	Tennis Court (Diplo's Andre Agassi Reebok Pump Remix)	EDMDance
Dimitri Vegas & Martin Garrix & Like Mike	Tremor	EDMDance
Hardwell	Spaceman Carnage Remix	EDMDance
Nero & Skrillex	Promises (Skrillex . Nero Remix)	EDMDance
Peking Duk	High	EDMDance
NGHTMRE & Loudpvck	Click Clack	EDMDance
TOKiMONSTA	Mileena's Theme	EDMDance
Calvin Harris & Ne-Yo	Let's Go	EDMDance
Justin Bieber & Nicki Minaj	Beauty and a Beat	EDMDance
Hundred Waters & Chance The Rapper & Moses Sumney & Robin Hannibal & Skrillex	Show Me Love (Skrillex Remix)	EDMDance
Ducky	Work	EDMDance
La Roux & Skrillex	In For The Kill (Skrillex Remix)	EDMDance
Wolfgang Gartner	Illmerica	EDMDance
Flume & Kai	Never Be Like You	EDMDance
Carnage & Migos	Bricks	EDMDance
QT	Hey QT	EDMDance
Swedish House Mafia & John Martin	Don't You Worry Child	EDMDance
Eric Prydz & Four Tet	Opus (Four Tet Remix)	EDMDance
Rusko	Woo Boost	EDMDance
Skrillex	Breathe (Krewella Vocal Edit)	EDMDance
ZHU	Faded	EDMDance
Kaskade	4 AM	EDMDance
Mat Zo & Porter Robinson	Easy	EDMDance
Baauer	GoGo!	EDMDance
Duck Sauce	Barbra Streisand	EDMDance
Waka Flocka Flame	Hard in Da Paint (Bellizio Remix Crizzly Edit)	EDMDance
RL Grime and What So Not	Tell Me	EDMDance
Flosstradamus and DJ Sliink	Crowd CTRL	EDMDance
Carnage & iLoveMakonnen	I Like Tuh	EDMDance
TroyBoi & Diplo & Nina Sky	Afterhours	EDMDance
Mija & Vindata	Better	EDMDance
Farrah Abraham	The Phone Call that Changed My Life	EDMDance
Diplo & Nicky Da B	Express Yourself	EDMDance
DJ Snake & Lil Jon	Turn Down For What	EDMDance
Krewella	Enjoy the Ride	EDMDance
Dada Life	Kickout the Epic Motherfucker	EDMDance
David Guetta & Usher	Without You	EDMDance
Major Lazer & DJ Snake	Lean On	EDMDance
The Chainsmokers & Halsey	Closer	EDMDance
Dillon Francis & Diplo	Que Que	EDMDance
Rustie	First Mythz	EDMDance
Afrojack	Take Over Control	EDMDance
Lil Jon & LMFAO	Outta Your Mind	EDMDance
Kid Cudi & Steve Aoki	Pursuit Of Happiness (Steve Aoki Remix)	EDMDance
Sleepy Tom and Anna Lunoe	Pusher	EDMDance
The Bloody Beetroots & Steve Aoki	Warp 19	EDMDance
Madeon	Finale	EDMDance
Calvin Harris & Rihanna	We Found Love	EDMDance
REZZ	Edge	EDMDance
Porter Robinson & Madeon & Slushii	Shelter (Slushii Remix)	EDMDance
deadmau5	Raise Your Weapon	EDMDance
Nero	Dark Skies	EDMDance
TNGHT	Higher Ground	EDMDance
Kanye West & RL Grime & Salva	Mercy (RL Grime . Salva Remix)	EDMDance
Cashmere Cat	Mirror Maru	EDMDance
Major Lazer	Pon De Floor	EDMDance
Marshmello	Alone	EDMDance
Porter Robinson	Sad Machine	EDMDance
Jack U & Justin Bieber	Where Are U Now	EDMDance
Justice	DANCE	EDMDance
Flux Pavilion	Bass Cannon	EDMDance
Britney Spears	Till the World Ends	EDMDance
Avicii	Levels	EDMDance
Skrillex	Scary Monsters and Nice Sprites	EDMDance
\.


--
-- Data for Name: hardrock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hardrock (name, artist, genre) FROM stdin;
I Can't Drive 55	Sammy Hagar	Hard Rock
We're An American Band	Grand Funk Railroad	Hard Rock
Lit Up	Buckcherry	Hard Rock
Frankenstein	The Edgar Winter Group	Hard Rock
Carry On Wayward Son	Kansas	Hard Rock
Higher	Creed	Hard Rock
I Believe In A Thing Called Love	The Darkness	Hard Rock
Turn Up The Radio	Autograph	Hard Rock
Don't Tell Me You Love Me	Night Ranger	Hard Rock
Bullet With Butterfly Wings	Smashing Pumpkins	Hard Rock
Aqualung	Jethro Tull	Hard Rock
Party Hard	Andrew W.K.	Hard Rock
Would?	Alice In Chains	Hard Rock
Seventeen	Winger	Hard Rock
The Beautiful People	Marilyn Manson	Hard Rock
Slither	Velvet Revolver	Hard Rock
I Wanna Be Somebody	W.A.S.P.	Hard Rock
Bring Me To Life	Evanescence	Hard Rock
Since You Been Gone	Rainbow	Hard Rock
Heaven And Hell	Black Sabbath	Hard Rock
Any Way You Want It	Journey	Hard Rock
Rebel Yell	Billy Idol	Hard Rock
Feel Like Making Love	Bad Company	Hard Rock
Black Hole Sun	Soundgarden	Hard Rock
Kiss Me Deadly	Lita Ford	Hard Rock
Seven Nation Army	The White Stripes	Hard Rock
Love Removal Machine	The Cult	Hard Rock
Jailbreak	Thin Lizzy	Hard Rock
Heartbreaker	Pat Benetar	Hard Rock
Mountain Song	Jane's Addiction	Hard Rock
Hot Blooded	Foreigner	Hard Rock
Cult Of Personality	Living Colour	Hard Rock
More Human Than Human	White Zombie	Hard Rock
Tush	ZZ Top	Hard Rock
The Final Countdown	Europe	Hard Rock
Kick Out the Jams	MC5	Hard Rock
Liar	Rollins Band	Hard Rock
Eye Of The Tiger	Survivor	Hard Rock
Breaking The Chains	Dokken	Hard Rock
Round And Round	Ratt	Hard Rock
18 And Life	Skid Row	Hard Rock
The Stroke	Billy Squier	Hard Rock
Interstate Love Song	Stone Temple Pilots	Hard Rock
You Really Got Me	The Kinks	Hard Rock
Cherry Pie	Warrant	Hard Rock
Don't Fear The Reaper	Blue Oyster Cult	Hard Rock
Epic	Faith No More	Hard Rock
Born To Be Wild	Steppenwolf	Hard Rock
Cherry Bomb	The Runaways	Hard Rock
Peace Sells	Megadeth	Hard Rock
Give It Away	Red Hot Chili Peppers	Hard Rock
Search And Destroy	The Stooges	Hard Rock
Freak On A Leash	Korn	Hard Rock
Bawitdaba	Kid Rock	Hard Rock
Madhouse	Anthrax	Hard Rock
Slow Ride	Foghat	Hard Rock
Sunshine Of Your Love	Cream	Hard Rock
Holy Diver	Dio	Hard Rock
Should I Stay Or Should I Go	The Clash	Hard Rock
Cum On Feel The Noize	Quiet Riot	Hard Rock
Talk Dirty To Me	Poison	Hard Rock
More Than A Feeling	Boston	Hard Rock
Stone Cold Crazy	Queen	Hard Rock
My Generation	The Who	Hard Rock
Hot For Teacher	Van Halen	Hard Rock
School's Out	Alice Cooper	Hard Rock
Barracuda	Heart	Hard Rock
Basket Case	Green Day	Hard Rock
Cat Scratch Fever	Ted Nugent	Hard Rock
Dirty Deeds Done Dirt Cheap	AC/DC	Hard Rock
Even Flow	Pearl Jam	Hard Rock
Bad Reputation	Joan Jett	Hard Rock
Everlong	Foo Fighters	Hard Rock
Still Of The Night	Whitesnake	Hard Rock
Free Bird	Lynyrd Skynyrd	Hard Rock
Blitzkrieg Bop	The Ramones	Hard Rock
In-AGadda-D-Vda	Iron Butterfly	Hard Rock
Crazy Train	Ozzy Osbourne	Hard Rock
Hey Joe	Jimi Hendrix Experience	Hard Rock
Kashmir	Led Zeppelin	Hard Rock
You Give Love A Bad Name	Bon Jovi	Hard Rock
Tom Sawyer	Rush	Hard Rock
Rock You Like A Hurricane	Scorpions	Hard Rock
I Wanna Rock	Twisted Sister	Hard Rock
Rock And Roll All Nite	Kiss	Hard Rock
Dr. Feelgood	Motley Crue	Hard Rock
Run To The Hills	Iron Maiden	Hard Rock
Photograph	Def Leppard	Hard Rock
Breaking The Law	Judas Priest	Hard Rock
Smoke On The Water	Deep Purple	Hard Rock
Ace Of Spades	Motorhead	Hard Rock
Runnin With The Devil	Van Halen	Hard Rock
Walk This Way	Aerosmith	Hard Rock
Smells Like Teen Spirit	Nirvana	Hard Rock
Won't Get Fooled Again	The Who	Hard Rock
Enter Sandman	Metallica	Hard Rock
Paranoid	Black Sabbath	Hard Rock
Whole Lotta Love	Led Zeppelin	Hard Rock
Back In Black	AC/DC	Hard Rock
Welcome To The Jungle	Guns N' Roses	Hard Rock
\.


--
-- Data for Name: hiphop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hiphop (name, artist, genre) FROM stdin;
The Message	Grandmaster Flash & The Furious Five	HipHop
Fight The Power	Public Enemy	HipHop
Nuthin But A "G" Thang	Dr. Dre	HipHop
It's Like That	Run-D.M.C.	HipHop
Rappers Delight	Sugarhill Gang	HipHop
Juicy	Notorious B.I.G.	HipHop
Children's Story	Slick Rick	HipHop
I Used To Love H.E.R.	Common	HipHop
Planet Rock	Afrika Bambaataa	HipHop
Paid in Full	Eric B. & Rakim	HipHop
Rock the Bells	LL Cool J	HipHop
Jesus Walks	Kanye West	HipHop
Walk This Way	Run-D.M.C. & Aerosmith	HipHop
The Breaks	Kurtis Blow	HipHop
Fuck Tha Police	N.W.A	HipHop
Rosa Parks	Outkast	HipHop
Check the Rhime	A Tribe Called Quest	HipHop
Keep Ya Head Up	2 Pac	HipHop
They Reminisce Over You (T.R.O.Y.)	C.L. Smooth & Pete Rock	HipHop
It Takes Two	Rob Base & DJ EZ Rock	HipHop
Stan	Eminem	HipHop
One Mic	Nas	HipHop
Me Myself and I	De La Soul	HipHop
The Show	Doug E. Fresh & Slick Rick	HipHop
The Bridge Is Over	Boogie Down Productions	HipHop
Bring The Noise	Public Enemy	HipHop
Award Tour	A Tribe Called Quest	HipHop
Shed So Many Tears	2 Pac	HipHop
Eric B. is President	Eric B. & Rakim	HipHop
Push It	Salt-n-Pepa	HipHop
Ms. Jackson	Outkast	HipHop
It Was A Good Day	Ice Cube	HipHop
Summertime	DJ Jazzy Jeff & The Fresh Prince	HipHop
Big Poppa	Notorious B.I.G.	HipHop
Cha Cha Cha	MC Lyte	HipHop
C.R.E.A.M.	Wu Tang Clan	HipHop
Hard Knock Life	Jay Z	HipHop
My Philosophy	Boogie Down Productions	HipHop
You Gots to Chill	EPMD	HipHop
Mind Playing Tricks on Me	Geto Boys	HipHop
Dear Mama	2 Pac	HipHop
I'll Be There for You/You're All I Need	Method Man & Mary J. Blige	HipHop
The World Is Yours	Nas	HipHop
Set It Off	Big Daddy Kane	HipHop
Rock Box	Run-D.M.C.	HipHop
Scenario	A Tribe Called Quest	HipHop
Tha Crossroads	Bone Thugs N Harmony	HipHop
I Need Love	LL Cool J	HipHop
O.P.P.	Naughty By Nature	HipHop
Sucker M.C.s	Run-D.M.C.	HipHop
Mama Said Knock You Out	LL Cool J	HipHop
Doo Wop (That Thing)	Lauryn Hill	HipHop
U.N.I.T.Y.	Queen Latifah	HipHop
Passin' Me By	The Pharcyde	HipHop
Murder Was the Case	Snoop Dogg	HipHop
Parents Just Don't Understand	DJ Jazzy Jeff & The Fresh Prince	HipHop
Ain't No Half-Steppin'	Big Daddy Kane	HipHop
What You Know	T.I.	HipHop
La Di Da Di	Slick Rick & Doug E. Fresh	HipHop
Bonita Applebum	A Tribe Called Quest	HipHop
The Definition	Mos Def & Talib Kweli	HipHop
Just A Friend	Biz Markie	HipHop
All About the Benjamins	Puff Daddy & Lil Kim & The LOX & The Notorious B.I.G.	HipHop
Wild Thing	Tone-Loc	HipHop
Get Ur Freak On	Missy Elliott	HipHop
Rap God	Eminem	HipHop
Not Afraid	Eminem	HipHop
Mockingbird	Eminem	HipHop
Triumph	Wu-Tang Clan	HipHop
Regulate	Warren G. & Nate Dogg	HipHop
The Choice Is Yours	Black Sheep	HipHop
Gangsta's Paradise	Coolio	HipHop
In Da Club	50 Cent	HipHop
Ladies First	Queen Latifah & Monie Love	HipHop
I Ain't No Joke	Eric B. & Rakim	HipHop
Rebirth of Slick (Cool Like Dat)	Digable Planets	HipHop
I'm Bad	LL Cool J	HipHop
Top Billin'	Audio Two	HipHop
Lyte As A Rock	MC Lyte	HipHop
The Humpty Dance	Digital Underground	HipHop
I Got 5 On It	The Luniz	HipHop
Elevators (Me & You)	Outkast	HipHop
You Got Me	The Roots	HipHop
Paul Revere	The Beastie Boys	HipHop
Colors	Ice T	HipHop
P.S.K. (What Does It Mean)	Schoolly D	HipHop
Boyz-N-The-Hood	Eazy E	HipHop
Roxanne	U.T.F.O.	HipHop
Shook Ones Pt II	Mobb Deep	HipHop
Dirty South	Goodie MOB	HipHop
Freaks Come Out At Night	Whodini	HipHop
Big Pimpin'	Jay Z	HipHop
Tennessee	Arrested Development	HipHop
Deep Cover	Dr. Dre & Snoop Dog	HipHop
It's the Joint	The Funky Four + 1	HipHop
A Milli	Lil Wayne	HipHop
Crush On You	Lil Kim	HipHop
Ridin'	Chamillionaire & Krayzie Bone	HipHop
6 In the Mornin'	Ice T	HipHop
Bust A Move	Young MC	HipHop
\.


--
-- Data for Name: lofi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lofi (name, artist, genre) FROM stdin;
School	Pip Bloom	LoFi
Sometimes	Snoh Aalegra	LoFi
alone by your side	j'san	LoFi
haHAA	xJK.	LoFi
when ur gone	kasper x mowley	LoFi
1998	iamalex	LoFi
Seasons	Pale Grey	LoFi
I Miss That Feeling	Tennis	LoFi
Shades	Simon Jefferis	LoFi
Trampoline//3:45 A.M.	Abe M Beats	LoFi
Denim Pockets	93 Bulls	LoFi
Countdown	King Gizzard and the Lizard Wizard	LoFi
Good Enough	Mudhoney	LoFi
Only Hope	Raindrop	LoFi
Babies Are A Lie	Pip Blom	LoFi
Serenade	saib.	LoFi
Sugar	Dirty Art Club	LoFi
Pimsoll Punks	Alvvays	LoFi
Romeo Romeo	Ross From Friends	LoFi
Enough of You (Karnaval Blues Remix)	Azad	LoFi
Map to the Stars	Ducktails	LoFi
Love and Cigarettes	Kedr Livanskiy	LoFi
June Gloom	Prima	LoFi
Dreams Tonite	Alvvays	LoFi
Ice Boy	Corbin	LoFi
BOY	DUCKWRTH	LoFi
12:34 AM	Bemos	LoFi
Suicide Doors	Slyme	LoFi
Ariadna	Kedr Livanskiy	LoFi
Girl	Sobs	LoFi
If you met her	Palehound	LoFi
In Undertow	Alvvays	LoFi
Together	iamalex	LoFi
Tasteless	Bare Pales	LoFi
The Good Times are Killing Me	Animal Husbandry	LoFi
Nostalgia for places you have never been to	GRIGOR	LoFi
Gibraltar Ape	Cabbage	LoFi
I Forgot How To Fly	iamalex	LoFi
Bobby	Alex G	LoFi
Dead End	Holy Now	LoFi
Lucky Girl	Fazerdaze	LoFi
Forget U	DJ Seinfeld	LoFi
Your Name	Bernache	LoFi
My Connection	Sweet William	LoFi
Hula Dancer	Blosson & The Kills	LoFi
Khmlwugh	Homeshake	LoFi
Let You Go	Deejay Astral	LoFi
Johnny	Sofi TUKKER	LoFi
luvsick	Killer Bee	LoFi
Special K	Mac DeMarco	LoFi
E n d u r a n c e	Invention	LoFi
CGH	Yared Kiflai	LoFi
Silver Lining	93 Bulls	LoFi
yesterday	chinese food	LoFi
\.


--
-- Data for Name: pop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pop (name, artist, genre) FROM stdin;
Tik Tok	Kesha	Pop
Imma Be	The Black Eyed Peas	Pop
Break Your Heart	Taio Cruz & Ludacris	Pop
Rude Boy	Rihann	Pop
Nothin' on You	B.o.B & Bruno Mars	Pop
OMG	Usher & will.i.am	Pop
Not Afraid	Eminem	Pop
California Gurls	Katy Perry & Snoop Dogg	Pop
Love the Way You Lie	Eminem & Rihanna	Pop
Teenage Dream	Katy Perry	Pop
Just the Way You Are	Bruno Mars	Pop
Like a G6	Far East Movement & The Cataracs & Dev	Pop
We R Who We R	Kesha	Pop
What's My Name?	Rihanna & Drake	Pop
Only Girl (In the World)	Rihanna	Pop
Raise Your Glass	Pink	Pop
Firework	Katy Perry	Pop
Grenade	Bruno Mars	Pop
Hold It Against Me	Britney Spears	Pop
Black and Yellow	Wiz Khalifa	Pop
Born This Way	Lady Gaga	Pop
E.T.	Katy Perry & Kanye West	Pop
S.M	Rihanna & Britney Spears	Pop
Rolling in the Deep	Adele	Pop
Give Me Everything	Pitbull & Ne-Yo & Afrojack & Nayer	Pop
Party Rock Anthem	LMFAO	Pop
Last Friday Night (T.G.I.F.)	Katy Perry	Pop
Moves Like Jagger	Maroon 5 & Christina Aguilera	Pop
Someone Like You	Adele	Pop
We Found Love	Rihanna & Calvin Harris	Pop
Sexy and I Know It	LMFAO	Pop
Set Fire to the Rain	Adele	Pop
Stronger (What Doesn't Kill You)	Kelly Clarkson	Pop
Part of Me	Katy Perry	Pop
We Are Young	Fun	Pop
Somebody That I Used to Know	Gotye & Kimbra	Pop
Call Me Maybe	Carly Rae Jepsen	Pop
Whistle	Flo Rida	Pop
We Are Never Ever Getting Back Together	Taylor Swift	Pop
One More Night	Maroon 5	Pop
Diamonds	Rihanna	Pop
Rude	Magic!	Pop
Locked Out of Heaven	Bruno Mars	Pop
Thrift Shop	Macklemore & Ryan Lewis & Wanz	Pop
Harlem Shake	Baauer	Pop
When I Was Your Man	Bruno Mars	Pop
Just Give Me a Reason	Pink & Nate Ruess	Pop
Can't Hold Us	Macklemore & Ryan Lewis	Pop
Blurred Lines	Robin Thicke & T.I. & Pharrell	Pop
Roar	Katy Perry	Pop
Wrecking Ball	Miley Cyrus	Pop
Royals	Lorde	Pop
The Monster	Eminem & Rihanna	Pop
Timber	Pitbull & Kesha	Pop
Dark Horse	Katy Perry & Juicy J	Pop
Happy	Pharrell Williams	Pop
All of Me	John Legend	Pop
Fancy	Iggy Azalea & Charli XCX	Pop
Shake It Off	Taylor Swift	Pop
All About That Bass	Meghan Trainor	Pop
Blank Space	Taylor Swift	Pop
Uptown Funk	Mark Ronson & Bruno Mars	Pop
See You Again	Wiz Khalifa & Charlie Puth	Pop
Bad Blood	Taylor Swift & Kendrick Lamar	Pop
Cheerleader	OMI	Pop
Can't Feel My Face	The Weeknd	Pop
What Do You Mean?	Justin Bieber	Pop
The Hills	The Weeknd	Pop
Hello	Adele	Pop
Sorry	Justin Bieber	Pop
Love Yourself	Justin Bieber	Pop
Pillowtalk	Zayn	Pop
Work	Rihanna & Drake	Pop
Panda	Desiigner	Pop
One Dance	Drake & WizKid & Kyla	Pop
Can't Stop the Feeling!	Justin Timberlake	Pop
Cheap Thrills	Sia & Sean Paul	Pop
Closer	The Chainsmokers & Halsey	Pop
Black Beatles	Rae Sremmurd & Gucci Mane	Pop
Starboy	The Weeknd & Daft Punk	Pop
Bad and Boujee	Migos & Lil Uzi Vert	Pop
Shape of You	Ed Sheeran	Pop
Humble	Kendrick Lamar	Pop
That's What I Like	Bruno Mars	Pop
I'm the One	DJ Khaled & Justin Bieber & Quavo & Chance the Rapper & Lil Wayne	Pop
Despacito	Luis Fonsi & Daddy Yankee & Justin Bieber	Pop
Look What You Made Me Do	Taylor Swift	Pop
Bodak Yellow (Money Moves)	Cardi B	Pop
Rockstar	Post Malone & 21 Savage	Pop
\.


--
-- Data for Name: rap; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rap (name, artist, genre) FROM stdin;
I Hate My Job	Cam'ron	Rap
Mic Check	Juelz Santana	Rap
Meat Grinder	Mad Villain	Rap
No regrets	Masta Ace	Rap
Strange Ways	Mad Villain	Rap
What U Gon' Do	Lil Jon	Rap
Acid Raindrops	People Under The Stairs	Rap
Uncle Sam	Brother Ali	Rap
Lean With It Rock With It	Dem Franchize Boys	Rap
That's That Shit	Snoop Dogg	Rap
Still Fly	Big Tymers	Rap
Hip-Hop	Joell Ortiz	Rap
Lean Back	Terror Squad	Rap
Fix Up Look Sharp	Dizzee Rascal	Rap
It's Your World	Common	Rap
Poet Laureate II	Canibus	Rap
A Life In The Day Of Benjamin' Andre	Outkast	Rap
10 Bricks	Raekwon	Rap
Get Your Freak On	Missy Elliot	Rap
Fireman	Lil Wayne	Rap
Westside Story	Game	Rap
Hot In Herre	Nelly	Rap
Quiet Dog Bite Hard	Mos Def	Rap
Why We Thugs	Ice Cube	Rap
Country Grammar	Nelly	Rap
The Kramer	Wale	Rap
Accordian	Mad Villain	Rap
Rubberband Man	T.I.	Rap
Ride Wit Me	Nelly	Rap
Uncommon Valor	Jedi Mind Tricks	Rap
Purple	Nas	Rap
Rising Up	The Roots	Rap
What More Can I Say	Jay Z	Rap
Eternal Sunshine	Jay Electronica	Rap
Soul Survivor	Young Jeezy	Rap
Stay Fly	Three 6 Mafia	Rap
Overnight Celebrity	Twista	Rap
Lollipop	Lil Wayne	Rap
Black Republican	Nas	Rap
Move Bitch	Ludacris	Rap
D.O.A	Jay Z	Rap
Big Brother	Kanye West	Rap
Paris Tokyo	Lupe Fiasco	Rap
What You Know	T.I.	Rap
Hustlin	Rick Ross	Rap
Paper Planes	MIA	Rap
White America	Eminem	Rap
Kim	Eminem	Rap
Big Pimpin	Jay Z	Rap
Takeover	Jay Z	Rap
Dirt off your Shoulder	Jay Z	Rap
Odd Toddlers	Odd Future	Rap
Mr. Carter	Lil Wayne	Rap
Ridin	Chamillionaire	Rap
Us Placers	Child Rebel Soldiers	Rap
The People	Common	Rap
So Fresh So Clean	OutKast	Rap
The Light	Common	Rap
Classic	Rakim & Nas & Kanye West & KRS-One	Rap
Swagger Like Us	T.I.	Rap
All Caps	Mad Villain	Rap
International Players Anthem	UGK	Rap
Drop It Like It's Hot	Snoop Dogg	Rap
Made You Look	Nas	Rap
A Milli	Lil Wayne	Rap
Gone	Kanye West	Rap
Super Star	Lupe Fiasco	Rap
Lights Please	J. Cole	Rap
B.O.B.	OutKast	Rap
Izzo (H.O.V.A.)	Jay Z	Rap
Hey Ya	OutKast	Rap
Cleanin Out My Closet	Eminem	Rap
Like Toy Soldiers	Eminem	Rap
Day 'n' Nite	Kid Cudi	Rap
Gold Digger	Kanye West	Rap
Empire State Of Mind	Jay Z	Rap
Hip Hop Saved My Life	Lupe Fiasco	Rap
Till I Collapse	Eminem	Rap
In Da Club	50 Cent	Rap
Exhibit C	Jay Electronica	Rap
Day Dreamin'	Lupe Fiasco	Rap
Forever	Drake	Rap
Hate It Or Love It	Game	Rap
Kick Push	Lupe Fiasco	Rap
The Way I Am	Eminem	Rap
Get By	Talib Kweli	Rap
Diamonds From Sierra Leone	Kanye West	Rap
Stronger	Kanye West	Rap
Ether	Nas	Rap
Forget About Dre	Dr. Dre	Rap
Pursuit Of Happiness	Kid Cudi	Rap
Ms. Jackson	OutKast	Rap
Bastard	Tyler The Creator	Rap
Lose Yourself	Eminem	Rap
One Mic	Nas	Rap
Jesus Walks	Kanye West	Rap
\.


--
-- Data for Name: songdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.songdata (songid, songname, songartist, songgenre, songalbum, clickspersong, avgrating, ratingcount, votes) FROM stdin;
241	Peking Duk	High	EDMDance                      	\N	0	0	0	0
1	Smells Like Teen Spirit	Nirvana	Alternative Rock              	\N	0	0	0	0
2	Love Will Tear Us Apart	Joy Division	Alternative Rock              	\N	0	0	0	0
3	Radio Free Europe	R.E.M.	Alternative Rock              	\N	0	0	0	0
4	Blue Monday	New Order	Alternative Rock              	\N	0	0	0	0
5	How Soon is Now?	The Smiths	Alternative Rock              	\N	0	0	0	0
6	Once in a Lifetime	Talking Heads	Alternative Rock              	\N	0	0	0	0
7	Teen Age Riot	Sonic Youth	Alternative Rock              	\N	0	0	0	0
8	Blister in the Sun	Violent Femmes	Alternative Rock              	\N	0	0	0	0
9	Jeremy	Pearl Jam	Alternative Rock              	\N	0	0	0	0
10	Monkey Gone to Heaven	Pixies	Alternative Rock              	\N	0	0	0	0
11	Under the Bridge	Red Hot Chili Peppers	Alternative Rock              	\N	0	0	0	0
12	Black Hole Sun	Soundgarden	Alternative Rock              	\N	0	0	0	0
13	Closer	Nine Inch Nails	Alternative Rock              	\N	0	0	0	0
14	Losing My Religion	R.E.M.	Alternative Rock              	\N	0	0	0	0
15	Wonderwall	Oasis	Alternative Rock              	\N	0	0	0	0
16	Just Like Heaven	The Cure	Alternative Rock              	\N	0	0	0	0
17	Cannonball	The Breeders	Alternative Rock              	\N	0	0	0	0
18	Sunday Bloody Sunday	U2	Alternative Rock              	\N	0	0	0	0
19	Loser	Beck	Alternative Rock              	\N	0	0	0	0
20	Creep	Radiohead	Alternative Rock              	\N	0	0	0	0
21	Hallelujah	Jeff Buckley	Alternative Rock              	\N	0	0	0	0
22	Bela Lugosis Dead	Bauhaus	Alternative Rock              	\N	0	0	0	0
23	Come As You Are	Nirvana	Alternative Rock              	\N	0	0	0	0
626	BOY	DUCKWRTH	LoFi                          	\N	0	0	0	0
24	Personal Jesus	Depeche Mode	Alternative Rock              	\N	0	0	0	0
25	Waiting Room	Fugazi	Alternative Rock              	\N	0	0	0	0
26	Here Comes Your Man	Pixies	Alternative Rock              	\N	0	0	0	0
27	Paranoid Android	Radiohead	Alternative Rock              	\N	0	0	0	0
28	There is a Light that Never Goes Out	The Smiths	Alternative Rock              	\N	0	0	0	0
29	Song 2	Blur	Alternative Rock              	\N	0	0	0	0
30	1979	The Smashing Pumpkins	Alternative Rock              	\N	0	0	0	0
31	Common People	Pulp	Alternative Rock              	\N	0	0	0	0
32	There She Goes	The Las	Alternative Rock              	\N	0	0	0	0
33	Running Up That Hill (A Deal With God)	Kate Bush	Alternative Rock              	\N	0	0	0	0
34	The Killing Moon	Echo and the Bunnymen	Alternative Rock              	\N	0	0	0	0
35	I Still Havent Found What Im Looking For	U2	Alternative Rock              	\N	0	0	0	0
36	Bitter Sweet Symphony	The Verve	Alternative Rock              	\N	0	0	0	0
37	Touch Me Im Sick	Mudhoney	Alternative Rock              	\N	0	0	0	0
38	Everlong	Foo Fighters	Alternative Rock              	\N	0	0	0	0
39	Atmosphere	Joy Division	Alternative Rock              	\N	0	0	0	0
40	All Apologies	Nirvana	Alternative Rock              	\N	0	0	0	0
41	Cut Your Hair	Pavement	Alternative Rock              	\N	0	0	0	0
42	Enjoy the Silence	Depeche Mode	Alternative Rock              	\N	0	0	0	0
43	Lovesong	The Cure	Alternative Rock              	\N	0	0	0	0
44	Would?	Alice in Chains	Alternative Rock              	\N	0	0	0	0
45	What I Got	Sublime	Alternative Rock              	\N	0	0	0	0
46	This Charming Man	The Smiths	Alternative Rock              	\N	0	0	0	0
47	Seven Nation Army	The White Stripes	Alternative Rock              	\N	0	0	0	0
48	Alive	Pearl Jam 	Alternative Rock              	\N	0	0	0	0
49	Jesus Christ Pose	Soundgarden	Alternative Rock              	\N	0	0	0	0
50	Radio Radio	Elvis Costello	Alternative Rock              	\N	0	0	0	0
51	Tonight Tonight	The Smashing Pumpkins 	Alternative Rock              	\N	0	0	0	0
52	Fake Plastic Trees	Radiohead	Alternative Rock              	\N	0	0	0	0
53	The One I Love	R.E.M.	Alternative Rock              	\N	0	0	0	0
54	Buddy Holly	Weezer	Alternative Rock              	\N	0	0	0	0
55	Live Forever	Oasis	Alternative Rock              	\N	0	0	0	0
56	New Years Day	U2 	Alternative Rock              	\N	0	0	0	0
57	Head Like a Hole	Nine Inch Nails	Alternative Rock              	\N	0	0	0	0
58	Plush	Stone Temple Pilots	Alternative Rock              	\N	0	0	0	0
59	I Wanna Be Adored	The Stone Roses	Alternative Rock              	\N	0	0	0	0
60	Just Like Honey	The Jesus and Mary Chain	Alternative Rock              	\N	0	0	0	0
61	Bastards of Young	The Replacements	Alternative Rock              	\N	0	0	0	0
62	Lithium	Nirvana	Alternative Rock              	\N	0	0	0	0
63	Burning Down the House	Talking Heads	Alternative Rock              	\N	0	0	0	0
64	Dear God	XTC	Alternative Rock              	\N	0	0	0	0
65	Sabotage	Beastie Boys	Alternative Rock              	\N	0	0	0	0
66	Alison	Elvis Costello	Alternative Rock              	\N	0	0	0	0
67	Boys Dont Cry	The Cure	Alternative Rock              	\N	0	0	0	0
68	Beds Are Burning	Midnight Oil	Alternative Rock              	\N	0	0	0	0
69	So Alive	Love and Rockets	Alternative Rock              	\N	0	0	0	0
70	Today	The Smashing Pumpkins	Alternative Rock              	\N	0	0	0	0
71	Freak Scene	Dinosaur Jr.	Alternative Rock              	\N	0	0	0	0
72	Under the Milky Way	The Church 	Alternative Rock              	\N	0	0	0	0
73	Shes Lost Control	Joy Division	Alternative Rock              	\N	0	0	0	0
74	Karma Police	Radiohead	Alternative Rock              	\N	0	0	0	0
75	Give It Away	Red Hot Chili Peppers	Alternative Rock              	\N	0	0	0	0
76	Birdhouse in Your Soul	They Might Be Giants	Alternative Rock              	\N	0	0	0	0
77	Thats Entertainment	The Jam	Alternative Rock              	\N	0	0	0	0
78	Kool Thing	Sonic Youth	Alternative Rock              	\N	0	0	0	0
79	When I Come Around	Green Day	Alternative Rock              	\N	0	0	0	0
80	Where is My Mind?	Pixies	Alternative Rock              	\N	0	0	0	0
81	Man in the Box	Alice in Chains	Alternative Rock              	\N	0	0	0	0
82	One	U2	Alternative Rock              	\N	0	0	0	0
83	True Faith	New Order	Alternative Rock              	\N	0	0	0	0
84	Epic	Faith No More	Alternative Rock              	\N	0	0	0	0
85	Only Shallow	My Bloody Valentine	Alternative Rock              	\N	0	0	0	0
86	Fairytale of New York	The Pogues	Alternative Rock              	\N	0	0	0	0
87	Summer Babe	Pavement	Alternative Rock              	\N	0	0	0	0
88	Academy Fight Song	Mission of Burma	Alternative Rock              	\N	0	0	0	0
89	Celebrated Summer	Husker Du	Alternative Rock              	\N	0	0	0	0
90	Loaded	Primal Scream	Alternative Rock              	\N	0	0	0	0
91	No Rain	Blind Melon	Alternative Rock              	\N	0	0	0	0
92	Shine	Collective Soul	Alternative Rock              	\N	0	0	0	0
93	Float On	Modest Mouse	Alternative Rock              	\N	0	0	0	0
94	Left of the Dial	The Replacements	Alternative Rock              	\N	0	0	0	0
95	I Melt With You	Modern English	Alternative Rock              	\N	0	0	0	0
96	Better Man	Pearl Jam	Alternative Rock              	\N	0	0	0	0
97	Nothing Compares 2 U	Sinead O Connor	Alternative Rock              	\N	0	0	0	0
98	Bulls on Parade	Rage Against the Machine	Alternative Rock              	\N	0	0	0	0
99	Dont Speak	No Doubt	Alternative Rock              	\N	0	0	0	0
100	Chloe Dancer/Crown of Thorns	Mother Love Bone	Alternative Rock              	\N	0	0	0	0
101	Stand by Your Man	Tammy Wynette	Country                       	\N	0	0	0	0
102	He Stopped Loving Her Today	George Jones	Country                       	\N	0	0	0	0
103	Crazy	Patsy Cline . Willie Nelson	Country                       	\N	0	0	0	0
104	Ring of Fire	Johnny Cash	Country                       	\N	0	0	0	0
105	Your Cheatin' Heart	Hank Williams	Country                       	\N	0	0	0	0
106	Friends in Low Places	Garth Brooks	Country                       	\N	0	0	0	0
107	I Fall to Pieces	Patsy Cline	Country                       	\N	0	0	0	0
108	Galveston	Glen Campbell	Country                       	\N	0	0	0	0
109	Behind Closed Doors	Charlie Rich	Country                       	\N	0	0	0	0
110	Mommas Don't Let Your Babies Grow Up to Be Cowboys	Waylon Jennings . Willie Nelson	Country                       	\N	0	0	0	0
111	Blue Moon of Kentucky	Bill Monroe	Country                       	\N	0	0	0	0
112	Amarillo by Morning	George Strait	Country                       	\N	0	0	0	0
113	Coal Miner's Daughter	Loretta Lynn	Country                       	\N	0	0	0	0
114	The Dance	Garth Brooks	Country                       	\N	0	0	0	0
115	Forever and Ever Amen	Randy Travis	Country                       	\N	0	0	0	0
116	I Will Always Love You	Dolly Parton	Country                       	\N	0	0	0	0
117	Hello Darlin	Conway Twitty	Country                       	\N	0	0	0	0
118	Country Roads	John Denver	Country                       	\N	0	0	0	0
119	Hey Good Lookin	Hank Williams	Country                       	\N	0	0	0	0
120	I Am a Man of Constant Sorrow	Foggy Bottom Boys	Country                       	\N	0	0	0	0
121	Boot Scootin' Boogie	Brooks . Dunn	Country                       	\N	0	0	0	0
122	I Can't Stop Loving You	Ray Charles	Country                       	\N	0	0	0	0
123	Independence Day	Martina McBride	Country                       	\N	0	0	0	0
124	It Wasn't God Who Made Honky Tonk Angels	Kitty Wells	Country                       	\N	0	0	0	0
125	On the Other Hand	Randy Travis	Country                       	\N	0	0	0	0
126	Walking the Floor Over You	Ernest Tubb	Country                       	\N	0	0	0	0
127	Coat of Many Colors	Dolly Parton	Country                       	\N	0	0	0	0
128	Act Naturally	Buck Owens	Country                       	\N	0	0	0	0
129	Mama He's Crazy	The Judds	Country                       	\N	0	0	0	0
130	If You've Got the Money I've Got the Time	Lefty Frizzell	Country                       	\N	0	0	0	0
131	Kiss an Angel Good Morning	Charlie Pride	Country                       	\N	0	0	0	0
132	Family Tradition	Hank Williams Jr.	Country                       	\N	0	0	0	0
133	Go Rest High on That Mountain	Vince Gill	Country                       	\N	0	0	0	0
134	Lovesick Blues	Hank Williams	Country                       	\N	0	0	0	0
135	Don't Rock the Jukebox	Alan Jackson	Country                       	\N	0	0	0	0
136	Tennessee Waltz	Patty Page	Country                       	\N	0	0	0	0
137	When You Say Nothing at All	Alison Krauss	Country                       	\N	0	0	0	0
138	God Bless the USA	Lee Greenwood	Country                       	\N	0	0	0	0
139	Green Grass of Home	Porter Wagoner	Country                       	\N	0	0	0	0
140	It's Your Love	Tim McGraw	Country                       	\N	0	0	0	0
141	There Stands the Glass	Webb Pierce	Country                       	\N	0	0	0	0
142	Devil Went Down to Georgia	Charlie Daniels	Country                       	\N	0	0	0	0
143	Chiseled in Stone	Vern Gosdin	Country                       	\N	0	0	0	0
144	Don't Toss Us Away	Patty Loveless	Country                       	\N	0	0	0	0
145	A Boy Named Sue	Johnny Cash	Country                       	\N	0	0	0	0
146	You Are My Sunshine	Gov. Jimmy Davis	Country                       	\N	0	0	0	0
147	Flowers on the Wall	Statler Brothers	Country                       	\N	0	0	0	0
148	Strawberry Wine	Deana Carter	Country                       	\N	0	0	0	0
149	Good Hearted Woman	Waylon Jennings	Country                       	\N	0	0	0	0
150	You're Still the One	Shania Twain	Country                       	\N	0	0	0	0
151	My Home's in Alabama	Alabama	Country                       	\N	0	0	0	0
152	Is There Life Out There	Reba McEntire	Country                       	\N	0	0	0	0
153	She's in Love With the Boy	Trisha Yearwood	Country                       	\N	0	0	0	0
154	Smoky Mountain Rain	Ronnie Milsap	Country                       	\N	0	0	0	0
155	Should've Been a Cowboy	Toby Keith	Country                       	\N	0	0	0	0
156	Rose Garden	Lynn Anderson	Country                       	\N	0	0	0	0
157	Please Remember Me	Tim McGraw	Country                       	\N	0	0	0	0
158	Blue	LeAnn Rimes	Country                       	\N	0	0	0	0
159	Before the Next Teardrop Falls	Freddie Fender	Country                       	\N	0	0	0	0
160	Passionate Kisses	Mary Chapin Carpenter	Country                       	\N	0	0	0	0
161	Have I Told You Lately That I Love You	Gene Autry	Country                       	\N	0	0	0	0
162	Here's a Quarter	Travis Tritt	Country                       	\N	0	0	0	0
163	He'll Have to Go	Jim Reeves	Country                       	\N	0	0	0	0
164	Seven Year Ache	Rosanne Cash	Country                       	\N	0	0	0	0
165	Sunday Morning Coming Down	Johnny Cash . Kris Kristofferson	Country                       	\N	0	0	0	0
166	Take this Job and Shove It	Johnny PayCheck	Country                       	\N	0	0	0	0
167	Something in Red	Lorrie Morgan	Country                       	\N	0	0	0	0
168	Foggy Mountain Breakdown	Flatt . Scruggs	Country                       	\N	0	0	0	0
169	I'd Be Better Off in a Pine Box	Doug Stone	Country                       	\N	0	0	0	0
170	Amazed	Lonestar	Country                       	\N	0	0	0	0
171	Faded Love	Bob Wills	Country                       	\N	0	0	0	0
172	Back in the Saddle Again	Gene Autry	Country                       	\N	0	0	0	0
173	Killin' Time	Clint Black	Country                       	\N	0	0	0	0
174	Okie from Muskogee	Merle Haggard	Country                       	\N	0	0	0	0
175	Wide Open Spaces	Dixie Chicks	Country                       	\N	0	0	0	0
176	Blue Eyes Crying in the Rain	Willie Nelson	Country                       	\N	0	0	0	0
177	The Chair	George Strait	Country                       	\N	0	0	0	0
178	Folsom Prison Blues	Johnny Cash	Country                       	\N	0	0	0	0
179	The Gambler	Kenny Rogers	Country                       	\N	0	0	0	0
180	Fancy	Reba McEntire	Country                       	\N	0	0	0	0
181	Where Were You (When the World Stopped Turning)	Alan Jackson	Country                       	\N	0	0	0	0
182	I'm So Lonesome I Could Cry	Hank Williams Sr.	Country                       	\N	0	0	0	0
183	I Hope You Dance	Lee Ann Womack	Country                       	\N	0	0	0	0
184	I Walk the Line	Johnny Cash	Country                       	\N	0	0	0	0
185	Rhinestone Cowboy	Glen Campbell	Country                       	\N	0	0	0	0
186	Always on My Mind	Willie Nelson	Country                       	\N	0	0	0	0
187	Harper Valley PTA	Jeannie C. Riley	Country                       	\N	0	0	0	0
188	D-I-V-O-R-C-E	Tammy Wynette	Country                       	\N	0	0	0	0
189	Will the Circle be Unbroken	Nitty Gritty Dirt Band	Country                       	\N	0	0	0	0
190	King of the Road	Roger Miller	Country                       	\N	0	0	0	0
191	Breathe	Faith Hill	Country                       	\N	0	0	0	0
192	Make the World Go Away	Eddy Arnold	Country                       	\N	0	0	0	0
193	Hello Walls	Faron Young	Country                       	\N	0	0	0	0
194	Sweet Dreams	Patsy Cline	Country                       	\N	0	0	0	0
195	El Paso	Marty Robbins	Country                       	\N	0	0	0	0
196	Delta Dawn	Tanya Tucker	Country                       	\N	0	0	0	0
197	When I Call Your Name	Vince Gill	Country                       	\N	0	0	0	0
198	Guitars & Cadillacs	Dwight Yoakam	Country                       	\N	0	0	0	0
199	Desperado	The Eagles	Country                       	\N	0	0	0	0
200	Don't Come Home A Drinkin'	Loretta Lynn	Country                       	\N	0	0	0	0
201	Axwell & Ingrosso	I Love You	EDMDance                      	\N	0	0	0	0
202	deadmau5 & Kaskade	I Remember	EDMDance                      	\N	0	0	0	0
203	SOPHIE	Hard	EDMDance                      	\N	0	0	0	0
204	David Guetta & Sia	Titanium	EDMDance                      	\N	0	0	0	0
205	Wiwek & Alvaro & MC Spyder	Boomshakatak	EDMDance                      	\N	0	0	0	0
206	Aazar	Rundat	EDMDance                      	\N	0	0	0	0
207	ATB & Dash Berlin	Apollo Road	EDMDance                      	\N	0	0	0	0
208	Alan Walker	Faded	EDMDance                      	\N	0	0	0	0
209	Above & Beyond	Can't Sleep	EDMDance                      	\N	0	0	0	0
210	Dillon Francis	Masta Blasta	EDMDance                      	\N	0	0	0	0
211	Usher & Pitbull	DJ Got Us Fallin' in Love	EDMDance                      	\N	0	0	0	0
212	OMI	Cheerleader (Felix Jaehn Remix)	EDMDance                      	\N	0	0	0	0
213	DEV & The Cataracs	Bass Down Low	EDMDance                      	\N	0	0	0	0
214	Shawn Wasabi & YDG	Burnt Rice	EDMDance                      	\N	0	0	0	0
215	Young L & Hudson Mohawke	Loud Pockets (Hudson Mohawke Remix)	EDMDance                      	\N	0	0	0	0
216	Lido	Money	EDMDance                      	\N	0	0	0	0
217	Blue Foundation & Zeds Dead	Eyes On Fire (Zeds Dead Remix)	EDMDance                      	\N	0	0	0	0
218	Anna Lunoe	BDD	EDMDance                      	\N	0	0	0	0
219	Cascada	Everytime We Touch	EDMDance                      	\N	0	0	0	0
220	Armin van Buuren & Avicii	Drowning (Avicii Remix)	EDMDance                      	\N	0	0	0	0
221	Clockwork	Surge feat Wynter Gordon	EDMDance                      	\N	0	0	0	0
222	Destructo	Higher	EDMDance                      	\N	0	0	0	0
223	Brodinski & LOUISAHHH!	Nobody Rules the Streets	EDMDance                      	\N	0	0	0	0
224	Taio Cruz	Dynamite	EDMDance                      	\N	0	0	0	0
225	The Chainsmokers	Don't Let Me Down	EDMDance                      	\N	0	0	0	0
226	Avicii	Silhouettes	EDMDance                      	\N	0	0	0	0
227	Knife Party	Internet Friends	EDMDance                      	\N	0	0	0	0
228	Zedd	Clarity	EDMDance                      	\N	0	0	0	0
229	Major Lazer & Mija	B2GETHER (Mija Remix)	EDMDance                      	\N	0	0	0	0
230	Keys N Krates	Dum Dee Dum	EDMDance                      	\N	0	0	0	0
231	Saint & UNIIQU3	Yo I'm Lit	EDMDance                      	\N	0	0	0	0
232	CETANA & moistbreezy	Running	EDMDance                      	\N	0	0	0	0
233	Ellie Goulding	Lights	EDMDance                      	\N	0	0	0	0
234	Unicorn Kid	Need U	EDMDance                      	\N	0	0	0	0
235	Flosstradamus	Rollup Baauer Remix	EDMDance                      	\N	0	0	0	0
236	Bassnectar	Magical World	EDMDance                      	\N	0	0	0	0
237	Lorde & Diplo	Tennis Court (Diplo's Andre Agassi Reebok Pump Remix)	EDMDance                      	\N	0	0	0	0
238	Dimitri Vegas & Martin Garrix & Like Mike	Tremor	EDMDance                      	\N	0	0	0	0
239	Hardwell	Spaceman Carnage Remix	EDMDance                      	\N	0	0	0	0
240	Nero & Skrillex	Promises (Skrillex . Nero Remix)	EDMDance                      	\N	0	0	0	0
242	NGHTMRE & Loudpvck	Click Clack	EDMDance                      	\N	0	0	0	0
243	TOKiMONSTA	Mileena's Theme	EDMDance                      	\N	0	0	0	0
244	Calvin Harris & Ne-Yo	Let's Go	EDMDance                      	\N	0	0	0	0
245	Justin Bieber & Nicki Minaj	Beauty and a Beat	EDMDance                      	\N	0	0	0	0
318	Coolest Cat	Cyran	Dubstep                       	\N	0	0	0	0
246	Hundred Waters & Chance The Rapper & Moses Sumney & Robin Hannibal & Skrillex	Show Me Love (Skrillex Remix)	EDMDance                      	\N	0	0	0	0
247	Ducky	Work	EDMDance                      	\N	0	0	0	0
248	La Roux & Skrillex	In For The Kill (Skrillex Remix)	EDMDance                      	\N	0	0	0	0
249	Wolfgang Gartner	Illmerica	EDMDance                      	\N	0	0	0	0
250	Flume & Kai	Never Be Like You	EDMDance                      	\N	0	0	0	0
251	Carnage & Migos	Bricks	EDMDance                      	\N	0	0	0	0
252	QT	Hey QT	EDMDance                      	\N	0	0	0	0
253	Swedish House Mafia & John Martin	Don't You Worry Child	EDMDance                      	\N	0	0	0	0
254	Eric Prydz & Four Tet	Opus (Four Tet Remix)	EDMDance                      	\N	0	0	0	0
255	Rusko	Woo Boost	EDMDance                      	\N	0	0	0	0
256	Skrillex	Breathe (Krewella Vocal Edit)	EDMDance                      	\N	0	0	0	0
257	ZHU	Faded	EDMDance                      	\N	0	0	0	0
258	Kaskade	4 AM	EDMDance                      	\N	0	0	0	0
259	Mat Zo & Porter Robinson	Easy	EDMDance                      	\N	0	0	0	0
260	Baauer	GoGo!	EDMDance                      	\N	0	0	0	0
261	Duck Sauce	Barbra Streisand	EDMDance                      	\N	0	0	0	0
262	Waka Flocka Flame	Hard in Da Paint (Bellizio Remix Crizzly Edit)	EDMDance                      	\N	0	0	0	0
263	RL Grime and What So Not	Tell Me	EDMDance                      	\N	0	0	0	0
264	Flosstradamus and DJ Sliink	Crowd CTRL	EDMDance                      	\N	0	0	0	0
265	Carnage & iLoveMakonnen	I Like Tuh	EDMDance                      	\N	0	0	0	0
266	TroyBoi & Diplo & Nina Sky	Afterhours	EDMDance                      	\N	0	0	0	0
267	Mija & Vindata	Better	EDMDance                      	\N	0	0	0	0
268	Farrah Abraham	The Phone Call that Changed My Life	EDMDance                      	\N	0	0	0	0
269	Diplo & Nicky Da B	Express Yourself	EDMDance                      	\N	0	0	0	0
270	DJ Snake & Lil Jon	Turn Down For What	EDMDance                      	\N	0	0	0	0
271	Krewella	Enjoy the Ride	EDMDance                      	\N	0	0	0	0
272	Dada Life	Kickout the Epic Motherfucker	EDMDance                      	\N	0	0	0	0
273	David Guetta & Usher	Without You	EDMDance                      	\N	0	0	0	0
274	Major Lazer & DJ Snake	Lean On	EDMDance                      	\N	0	0	0	0
275	The Chainsmokers & Halsey	Closer	EDMDance                      	\N	0	0	0	0
276	Dillon Francis & Diplo	Que Que	EDMDance                      	\N	0	0	0	0
277	Rustie	First Mythz	EDMDance                      	\N	0	0	0	0
278	Afrojack	Take Over Control	EDMDance                      	\N	0	0	0	0
279	Lil Jon & LMFAO	Outta Your Mind	EDMDance                      	\N	0	0	0	0
280	Kid Cudi & Steve Aoki	Pursuit Of Happiness (Steve Aoki Remix)	EDMDance                      	\N	0	0	0	0
281	Sleepy Tom and Anna Lunoe	Pusher	EDMDance                      	\N	0	0	0	0
282	The Bloody Beetroots & Steve Aoki	Warp 19	EDMDance                      	\N	0	0	0	0
283	Madeon	Finale	EDMDance                      	\N	0	0	0	0
284	Calvin Harris & Rihanna	We Found Love	EDMDance                      	\N	0	0	0	0
285	REZZ	Edge	EDMDance                      	\N	0	0	0	0
286	Porter Robinson & Madeon & Slushii	Shelter (Slushii Remix)	EDMDance                      	\N	0	0	0	0
287	deadmau5	Raise Your Weapon	EDMDance                      	\N	0	0	0	0
288	Nero	Dark Skies	EDMDance                      	\N	0	0	0	0
289	TNGHT	Higher Ground	EDMDance                      	\N	0	0	0	0
290	Kanye West & RL Grime & Salva	Mercy (RL Grime . Salva Remix)	EDMDance                      	\N	0	0	0	0
291	Cashmere Cat	Mirror Maru	EDMDance                      	\N	0	0	0	0
292	Major Lazer	Pon De Floor	EDMDance                      	\N	0	0	0	0
293	Marshmello	Alone	EDMDance                      	\N	0	0	0	0
294	Porter Robinson	Sad Machine	EDMDance                      	\N	0	0	0	0
295	Jack U & Justin Bieber	Where Are U Now	EDMDance                      	\N	0	0	0	0
296	Justice	DANCE	EDMDance                      	\N	0	0	0	0
297	Flux Pavilion	Bass Cannon	EDMDance                      	\N	0	0	0	0
298	Britney Spears	Till the World Ends	EDMDance                      	\N	0	0	0	0
299	Avicii	Levels	EDMDance                      	\N	0	0	0	0
300	Skrillex	Scary Monsters and Nice Sprites	EDMDance                      	\N	0	0	0	0
301	A Song Of Fire and Ice (Sarah Stone Vocal Edit)	Just A Gent	Dubstep                       	\N	0	0	0	0
302	A Thousand Times	Trolley Snatcha	Dubstep                       	\N	0	0	0	0
303	Around The Block (Datsik Remix)	Pretty Lights & Talib Kweli & Datsik	Dubstep                       	\N	0	0	0	0
304	Bad Boy Flow (Protohype Dubstep VIP)	Protohype & ETC!ETC!	Dubstep                       	\N	0	0	0	0
305	Beam (Skrux Remix)	MakO & Angel Taylor & Skrux	Dubstep                       	\N	0	0	0	0
306	Before I Fall	Zanski & Ibe	Dubstep                       	\N	0	0	0	0
307	Blow Your Speakers	Filth Collins	Dubstep                       	\N	0	0	0	0
308	Bring The Rain (AFK Remix)	Candyland & AFK 	Dubstep                       	\N	0	0	0	0
309	Bring the Rain (heRobust remix)	Candyland & heRobust	Dubstep                       	\N	0	0	0	0
310	Candy	Zanski & Bombs & Bottles	Dubstep                       	\N	0	0	0	0
311	Catch Me As I Fall (Koa Remix)	Melissa Pixel & Koa	Dubstep                       	\N	0	0	0	0
312	Chainsaw (Direktor Remix)	Prostecutioner & Direktor	Dubstep                       	\N	0	0	0	0
313	Chasing Ghosts	Collin McLoughlin	Dubstep                       	\N	0	0	0	0
314	Chemicals	Rekoil	Dubstep                       	\N	0	0	0	0
455	Madhouse	Anthrax	Hard Rock                     	\N	0	0	0	0
315	Chiaroscuro (Vaski Remix)	Sound Remedy & Vaski 	Dubstep                       	\N	0	0	0	0
316	Chiaroscuro	Sound Remedy	Dubstep                       	\N	0	0	0	0
317	Cobra	Vaski	Dubstep                       	\N	0	0	0	0
319	Deze	JVN	Dubstep                       	\N	0	0	0	0
320	Diamond Sky (Skrux Remix)	Elliot Berger & Laura Brehm & Skrux	Dubstep                       	\N	0	0	0	0
321	Dope Arcade (MitiS Remix)	Ascension & MitiS	Dubstep                       	\N	0	0	0	0
322	Fathom	Frequent	Dubstep                       	\N	0	0	0	0
323	Find You (PRFFTT & Svyable Remix)	Skrux & Felxprod & PRFFTT & Svyable	Dubstep                       	\N	0	0	0	0
699	Harlem Shake	Baauer	Pop                           	\N	0	0	0	0
324	For This Moment	Spag Heddy	Dubstep                       	\N	0	0	0	0
325	For You	Killabyte	Dubstep                       	\N	0	0	0	0
326	Fragments (Clark Kent Remix)	Jaymes Young & Clark Kent	Dubstep                       	\N	0	0	0	0
327	Fuck Trap	Kurfew	Dubstep                       	\N	0	0	0	0
328	Game On	Timeline	Dubstep                       	\N	0	0	0	0
329	Get Wild (MUST DIE! Remix)	Candyland & MUST DIE!	Dubstep                       	\N	0	0	0	0
330	Gonna Move	Karetus	Dubstep                       	\N	0	0	0	0
331	Good Fella	EXPLQIT	Dubstep                       	\N	0	0	0	0
332	Grinder	Walka	Dubstep                       	\N	0	0	0	0
333	Gunshot	ChooKy	Dubstep                       	\N	0	0	0	0
334	Hand Trigga	Bobby Duque & Mr. Welch	Dubstep                       	\N	0	0	0	0
335	Hanging On (Myriad Remix)	Thallie Ann Seenyen & Myriad	Dubstep                       	\N	0	0	0	0
336	Heavy	Filthzilla	Dubstep                       	\N	0	0	0	0
337	Home (RoughMath Remix)	Jarvis & Ivy Jayne & RoughMath	Dubstep                       	\N	0	0	0	0
338	Home (SirensCeol Remix)	Jarvis & Ivy Jayne & SirensCeol	Dubstep                       	\N	0	0	0	0
339	Humanity	Phasmo	Dubstep                       	\N	0	0	0	0
340	Hypnotizing (Vocal VIP)	SPL	Dubstep                       	\N	0	0	0	0
341	If U Feel	Spag Heddy	Dubstep                       	\N	0	0	0	0
342	Implode	Subtex	Dubstep                       	\N	0	0	0	0
343	Kabuki	Tisoki	Dubstep                       	\N	0	0	0	0
344	Knockout	Tisoki	Dubstep                       	\N	0	0	0	0
345	Lawless	Pegboard Nerds	Dubstep                       	\N	0	0	0	0
346	Lift Me	Inaki	Dubstep                       	\N	0	0	0	0
347	Lights Out	Getter	Dubstep                       	\N	0	0	0	0
348	Lucid	Bryzone	Dubstep                       	\N	0	0	0	0
349	Medieval Dub VIP	Dub Scout	Dubstep                       	\N	0	0	0	0
350	Mellow	PADU	Dubstep                       	\N	0	0	0	0
351	Mercurial	Anna Yvette	Dubstep                       	\N	0	0	0	0
352	Minions	KromeEdge	Dubstep                       	\N	0	0	0	0
353	Misery	Crystal Drop	Dubstep                       	\N	0	0	0	0
354	Molly's Song	Beyond Ominous	Dubstep                       	\N	0	0	0	0
355	Moments (Ennui Remix)	Mutrix & Charity Vance & Vena Cava & Ennui 	Dubstep                       	\N	0	0	0	0
356	Mr. French	Mantis	Dubstep                       	\N	0	0	0	0
357	Mushroom Factory	Panda Eyes	Dubstep                       	\N	0	0	0	0
358	Nightmare	SirensCeol & Sean Dee	Dubstep                       	\N	0	0	0	0
359	Nobody Cares	Dub Bangers & EH!DE	Dubstep                       	\N	0	0	0	0
360	Nosebleed	Jarvis	Dubstep                       	\N	0	0	0	0
361	One Desire	Collin McLoughlin 	Dubstep                       	\N	0	0	0	0
362	Only You (Darphesh Remix)	Tisoki & Shoshki & Darphesh	Dubstep                       	\N	0	0	0	0
363	Open Your Eyes	Case and Point & Lara Woolf	Dubstep                       	\N	0	0	0	0
364	Pandora	REDNEK	Dubstep                       	\N	0	0	0	0
365	Papa Smurf's Evening Riddim	Obscenity	Dubstep                       	\N	0	0	0	0
366	Perfect Timing (Stick Up Kids)	Figure	Dubstep                       	\N	0	0	0	0
367	Phantom	Des McMahon	Dubstep                       	\N	0	0	0	0
368	Phoenix	Elim & Mitchell Leighton	Dubstep                       	\N	0	0	0	0
369	Planet Online (Culprate Remix)	Neosignal & Culprate	Dubstep                       	\N	0	0	0	0
370	Renegade	David Butterfield	Dubstep                       	\N	0	0	0	0
371	Roots (I AM ROBOT Remix)	Mashur & Kevlar & I AM ROBOT	Dubstep                       	\N	0	0	0	0
372	Run	Secoya	Dubstep                       	\N	0	0	0	0
373	Shooting Star	Collin McLoughlin	Dubstep                       	\N	0	0	0	0
374	Shout Me!	Dorris & Lady Killa & Sweeney	Dubstep                       	\N	0	0	0	0
375	Sine Time	Spag Heddy	Dubstep                       	\N	0	0	0	0
376	Skeleton Key (RUN DMT Remix)	Love Inks & RUN DMT	Dubstep                       	\N	0	0	0	0
377	Standing On A Hill	Flux Pavilion	Dubstep                       	\N	0	0	0	0
378	Stardust Redux (Crywolf Remix)	Minnesota & Crywolf	Dubstep                       	\N	0	0	0	0
379	Stethoscope (Squidthief Remix)	Dub Scout & Squidthief	Dubstep                       	\N	0	0	0	0
380	Stinger (Spag Heddy Remix)	Oliver Heldens & Spag Heddy	Dubstep                       	\N	0	0	0	0
381	Stratos	Stabby & Poizon	Dubstep                       	\N	0	0	0	0
382	Sunrise	HiLo	Dubstep                       	\N	0	0	0	0
383	Surveillance Society	TRUTH	Dubstep                       	\N	0	0	0	0
384	Swashbuckle	LoBounce & Flinch	Dubstep                       	\N	0	0	0	0
385	Take Me Away	Melodies Influencing Actions	Dubstep                       	\N	0	0	0	0
386	Tangent	Labrat & Downsquarez & Jamburglar	Dubstep                       	\N	0	0	0	0
387	The Art of Rise and Fall	Castor Troy	Dubstep                       	\N	0	0	0	0
388	The Traveller	Warriyo	Dubstep                       	\N	0	0	0	0
389	The Wolf (Tetrix Bass Remix)	Felxprod & Thallie Ann Seenyen & Tetrix Bass	Dubstep                       	\N	0	0	0	0
390	The Wolf	Felxprod & Thallie Ann Seenyen	Dubstep                       	\N	0	0	0	0
391	Trigger	Kezwik & Mel Presson	Dubstep                       	\N	0	0	0	0
392	Undercover (Dilemn Remix)	Bluescreens & Dilemn	Dubstep                       	\N	0	0	0	0
393	Unlimited Pancakes	SirensCeol	Dubstep                       	\N	0	0	0	0
394	Voices	Urbanstep	Dubstep                       	\N	0	0	0	0
395	We Are	PRFFTT & Svyable & Crywolf	Dubstep                       	\N	0	0	0	0
396	When The Light Shines	M-one & Ngaire Blackman	Dubstep                       	\N	0	0	0	0
397	Wicked (Jantsen Remix)	Karetus & Clinton Sly & Jantsen	Dubstep                       	\N	0	0	0	0
398	Wut	THE UN1K	Dubstep                       	\N	0	0	0	0
399	Ye Olde	Cyran	Dubstep                       	\N	0	0	0	0
400	Your Addiction Duelle (Panda Eyes Remix)	CiRRO & Panda Eyes	Dubstep                       	\N	0	0	0	0
401	I Can't Drive 55	Sammy Hagar	Hard Rock                     	\N	0	0	0	0
402	We're An American Band	Grand Funk Railroad	Hard Rock                     	\N	0	0	0	0
403	Lit Up	Buckcherry	Hard Rock                     	\N	0	0	0	0
404	Frankenstein	The Edgar Winter Group	Hard Rock                     	\N	0	0	0	0
405	Carry On Wayward Son	Kansas	Hard Rock                     	\N	0	0	0	0
406	Higher	Creed	Hard Rock                     	\N	0	0	0	0
407	I Believe In A Thing Called Love	The Darkness	Hard Rock                     	\N	0	0	0	0
408	Turn Up The Radio	Autograph	Hard Rock                     	\N	0	0	0	0
409	Don't Tell Me You Love Me	Night Ranger	Hard Rock                     	\N	0	0	0	0
410	Bullet With Butterfly Wings	Smashing Pumpkins	Hard Rock                     	\N	0	0	0	0
411	Aqualung	Jethro Tull	Hard Rock                     	\N	0	0	0	0
412	Party Hard	Andrew W.K.	Hard Rock                     	\N	0	0	0	0
413	Would?	Alice In Chains	Hard Rock                     	\N	0	0	0	0
414	Seventeen	Winger	Hard Rock                     	\N	0	0	0	0
415	The Beautiful People	Marilyn Manson	Hard Rock                     	\N	0	0	0	0
416	Slither	Velvet Revolver	Hard Rock                     	\N	0	0	0	0
417	I Wanna Be Somebody	W.A.S.P.	Hard Rock                     	\N	0	0	0	0
418	Bring Me To Life	Evanescence	Hard Rock                     	\N	0	0	0	0
419	Since You Been Gone	Rainbow	Hard Rock                     	\N	0	0	0	0
420	Heaven And Hell	Black Sabbath	Hard Rock                     	\N	0	0	0	0
421	Any Way You Want It	Journey	Hard Rock                     	\N	0	0	0	0
422	Rebel Yell	Billy Idol	Hard Rock                     	\N	0	0	0	0
423	Feel Like Making Love	Bad Company	Hard Rock                     	\N	0	0	0	0
424	Black Hole Sun	Soundgarden	Hard Rock                     	\N	0	0	0	0
425	Kiss Me Deadly	Lita Ford	Hard Rock                     	\N	0	0	0	0
426	Seven Nation Army	The White Stripes	Hard Rock                     	\N	0	0	0	0
427	Love Removal Machine	The Cult	Hard Rock                     	\N	0	0	0	0
428	Jailbreak	Thin Lizzy	Hard Rock                     	\N	0	0	0	0
429	Heartbreaker	Pat Benetar	Hard Rock                     	\N	0	0	0	0
430	Mountain Song	Jane's Addiction	Hard Rock                     	\N	0	0	0	0
431	Hot Blooded	Foreigner	Hard Rock                     	\N	0	0	0	0
432	Cult Of Personality	Living Colour	Hard Rock                     	\N	0	0	0	0
433	More Human Than Human	White Zombie	Hard Rock                     	\N	0	0	0	0
434	Tush	ZZ Top	Hard Rock                     	\N	0	0	0	0
435	The Final Countdown	Europe	Hard Rock                     	\N	0	0	0	0
436	Kick Out the Jams	MC5	Hard Rock                     	\N	0	0	0	0
437	Liar	Rollins Band	Hard Rock                     	\N	0	0	0	0
438	Eye Of The Tiger	Survivor	Hard Rock                     	\N	0	0	0	0
439	Breaking The Chains	Dokken	Hard Rock                     	\N	0	0	0	0
440	Round And Round	Ratt	Hard Rock                     	\N	0	0	0	0
441	18 And Life	Skid Row	Hard Rock                     	\N	0	0	0	0
442	The Stroke	Billy Squier	Hard Rock                     	\N	0	0	0	0
443	Interstate Love Song	Stone Temple Pilots	Hard Rock                     	\N	0	0	0	0
444	You Really Got Me	The Kinks	Hard Rock                     	\N	0	0	0	0
445	Cherry Pie	Warrant	Hard Rock                     	\N	0	0	0	0
446	Don't Fear The Reaper	Blue Oyster Cult	Hard Rock                     	\N	0	0	0	0
447	Epic	Faith No More	Hard Rock                     	\N	0	0	0	0
448	Born To Be Wild	Steppenwolf	Hard Rock                     	\N	0	0	0	0
449	Cherry Bomb	The Runaways	Hard Rock                     	\N	0	0	0	0
450	Peace Sells	Megadeth	Hard Rock                     	\N	0	0	0	0
451	Give It Away	Red Hot Chili Peppers	Hard Rock                     	\N	0	0	0	0
452	Search And Destroy	The Stooges	Hard Rock                     	\N	0	0	0	0
453	Freak On A Leash	Korn	Hard Rock                     	\N	0	0	0	0
454	Bawitdaba	Kid Rock	Hard Rock                     	\N	0	0	0	0
456	Slow Ride	Foghat	Hard Rock                     	\N	0	0	0	0
457	Sunshine Of Your Love	Cream	Hard Rock                     	\N	0	0	0	0
458	Holy Diver	Dio	Hard Rock                     	\N	0	0	0	0
459	Should I Stay Or Should I Go	The Clash	Hard Rock                     	\N	0	0	0	0
460	Cum On Feel The Noize	Quiet Riot	Hard Rock                     	\N	0	0	0	0
461	Talk Dirty To Me	Poison	Hard Rock                     	\N	0	0	0	0
462	More Than A Feeling	Boston	Hard Rock                     	\N	0	0	0	0
463	Stone Cold Crazy	Queen	Hard Rock                     	\N	0	0	0	0
464	My Generation	The Who	Hard Rock                     	\N	0	0	0	0
465	Hot For Teacher	Van Halen	Hard Rock                     	\N	0	0	0	0
466	School's Out	Alice Cooper	Hard Rock                     	\N	0	0	0	0
467	Barracuda	Heart	Hard Rock                     	\N	0	0	0	0
468	Basket Case	Green Day	Hard Rock                     	\N	0	0	0	0
469	Cat Scratch Fever	Ted Nugent	Hard Rock                     	\N	0	0	0	0
470	Dirty Deeds Done Dirt Cheap	AC/DC	Hard Rock                     	\N	0	0	0	0
471	Even Flow	Pearl Jam	Hard Rock                     	\N	0	0	0	0
472	Bad Reputation	Joan Jett	Hard Rock                     	\N	0	0	0	0
473	Everlong	Foo Fighters	Hard Rock                     	\N	0	0	0	0
474	Still Of The Night	Whitesnake	Hard Rock                     	\N	0	0	0	0
475	Free Bird	Lynyrd Skynyrd	Hard Rock                     	\N	0	0	0	0
476	Blitzkrieg Bop	The Ramones	Hard Rock                     	\N	0	0	0	0
477	In-AGadda-D-Vda	Iron Butterfly	Hard Rock                     	\N	0	0	0	0
478	Crazy Train	Ozzy Osbourne	Hard Rock                     	\N	0	0	0	0
479	Hey Joe	Jimi Hendrix Experience	Hard Rock                     	\N	0	0	0	0
480	Kashmir	Led Zeppelin	Hard Rock                     	\N	0	0	0	0
481	You Give Love A Bad Name	Bon Jovi	Hard Rock                     	\N	0	0	0	0
482	Tom Sawyer	Rush	Hard Rock                     	\N	0	0	0	0
483	Rock You Like A Hurricane	Scorpions	Hard Rock                     	\N	0	0	0	0
484	I Wanna Rock	Twisted Sister	Hard Rock                     	\N	0	0	0	0
485	Rock And Roll All Nite	Kiss	Hard Rock                     	\N	0	0	0	0
486	Dr. Feelgood	Motley Crue	Hard Rock                     	\N	0	0	0	0
487	Run To The Hills	Iron Maiden	Hard Rock                     	\N	0	0	0	0
488	Photograph	Def Leppard	Hard Rock                     	\N	0	0	0	0
489	Breaking The Law	Judas Priest	Hard Rock                     	\N	0	0	0	0
490	Smoke On The Water	Deep Purple	Hard Rock                     	\N	0	0	0	0
491	Ace Of Spades	Motorhead	Hard Rock                     	\N	0	0	0	0
492	Runnin With The Devil	Van Halen	Hard Rock                     	\N	0	0	0	0
493	Walk This Way	Aerosmith	Hard Rock                     	\N	0	0	0	0
494	Smells Like Teen Spirit	Nirvana	Hard Rock                     	\N	0	0	0	0
495	Won't Get Fooled Again	The Who	Hard Rock                     	\N	0	0	0	0
496	Enter Sandman	Metallica	Hard Rock                     	\N	0	0	0	0
497	Paranoid	Black Sabbath	Hard Rock                     	\N	0	0	0	0
498	Whole Lotta Love	Led Zeppelin	Hard Rock                     	\N	0	0	0	0
499	Back In Black	AC/DC	Hard Rock                     	\N	0	0	0	0
500	Welcome To The Jungle	Guns N' Roses	Hard Rock                     	\N	0	0	0	0
501	The Message	Grandmaster Flash & The Furious Five	HipHop                        	\N	0	0	0	0
502	Fight The Power	Public Enemy	HipHop                        	\N	0	0	0	0
503	Nuthin But A "G" Thang	Dr. Dre	HipHop                        	\N	0	0	0	0
504	It's Like That	Run-D.M.C.	HipHop                        	\N	0	0	0	0
505	Rappers Delight	Sugarhill Gang	HipHop                        	\N	0	0	0	0
506	Juicy	Notorious B.I.G.	HipHop                        	\N	0	0	0	0
507	Children's Story	Slick Rick	HipHop                        	\N	0	0	0	0
508	I Used To Love H.E.R.	Common	HipHop                        	\N	0	0	0	0
509	Planet Rock	Afrika Bambaataa	HipHop                        	\N	0	0	0	0
510	Paid in Full	Eric B. & Rakim	HipHop                        	\N	0	0	0	0
511	Rock the Bells	LL Cool J	HipHop                        	\N	0	0	0	0
512	Jesus Walks	Kanye West	HipHop                        	\N	0	0	0	0
513	Walk This Way	Run-D.M.C. & Aerosmith	HipHop                        	\N	0	0	0	0
514	The Breaks	Kurtis Blow	HipHop                        	\N	0	0	0	0
515	Fuck Tha Police	N.W.A	HipHop                        	\N	0	0	0	0
516	Rosa Parks	Outkast	HipHop                        	\N	0	0	0	0
517	Check the Rhime	A Tribe Called Quest	HipHop                        	\N	0	0	0	0
518	Keep Ya Head Up	2 Pac	HipHop                        	\N	0	0	0	0
519	They Reminisce Over You (T.R.O.Y.)	C.L. Smooth & Pete Rock	HipHop                        	\N	0	0	0	0
520	It Takes Two	Rob Base & DJ EZ Rock	HipHop                        	\N	0	0	0	0
521	Stan	Eminem	HipHop                        	\N	0	0	0	0
522	One Mic	Nas	HipHop                        	\N	0	0	0	0
523	Me Myself and I	De La Soul	HipHop                        	\N	0	0	0	0
524	The Show	Doug E. Fresh & Slick Rick	HipHop                        	\N	0	0	0	0
525	The Bridge Is Over	Boogie Down Productions	HipHop                        	\N	0	0	0	0
526	Bring The Noise	Public Enemy	HipHop                        	\N	0	0	0	0
527	Award Tour	A Tribe Called Quest	HipHop                        	\N	0	0	0	0
528	Shed So Many Tears	2 Pac	HipHop                        	\N	0	0	0	0
529	Eric B. is President	Eric B. & Rakim	HipHop                        	\N	0	0	0	0
530	Push It	Salt-n-Pepa	HipHop                        	\N	0	0	0	0
531	Ms. Jackson	Outkast	HipHop                        	\N	0	0	0	0
532	It Was A Good Day	Ice Cube	HipHop                        	\N	0	0	0	0
533	Summertime	DJ Jazzy Jeff & The Fresh Prince	HipHop                        	\N	0	0	0	0
534	Big Poppa	Notorious B.I.G.	HipHop                        	\N	0	0	0	0
535	Cha Cha Cha	MC Lyte	HipHop                        	\N	0	0	0	0
536	C.R.E.A.M.	Wu Tang Clan	HipHop                        	\N	0	0	0	0
537	Hard Knock Life	Jay Z	HipHop                        	\N	0	0	0	0
538	My Philosophy	Boogie Down Productions	HipHop                        	\N	0	0	0	0
539	You Gots to Chill	EPMD	HipHop                        	\N	0	0	0	0
540	Mind Playing Tricks on Me	Geto Boys	HipHop                        	\N	0	0	0	0
541	Dear Mama	2 Pac	HipHop                        	\N	0	0	0	0
621	Map to the Stars	Ducktails	LoFi                          	\N	0	0	0	0
542	I'll Be There for You/You're All I Need	Method Man & Mary J. Blige	HipHop                        	\N	0	0	0	0
543	The World Is Yours	Nas	HipHop                        	\N	0	0	0	0
544	Set It Off	Big Daddy Kane	HipHop                        	\N	0	0	0	0
545	Rock Box	Run-D.M.C.	HipHop                        	\N	0	0	0	0
546	Scenario	A Tribe Called Quest	HipHop                        	\N	0	0	0	0
547	Tha Crossroads	Bone Thugs N Harmony	HipHop                        	\N	0	0	0	0
548	I Need Love	LL Cool J	HipHop                        	\N	0	0	0	0
549	O.P.P.	Naughty By Nature	HipHop                        	\N	0	0	0	0
550	Sucker M.C.s	Run-D.M.C.	HipHop                        	\N	0	0	0	0
551	Mama Said Knock You Out	LL Cool J	HipHop                        	\N	0	0	0	0
552	Doo Wop (That Thing)	Lauryn Hill	HipHop                        	\N	0	0	0	0
553	U.N.I.T.Y.	Queen Latifah	HipHop                        	\N	0	0	0	0
554	Passin' Me By	The Pharcyde	HipHop                        	\N	0	0	0	0
555	Murder Was the Case	Snoop Dogg	HipHop                        	\N	0	0	0	0
556	Parents Just Don't Understand	DJ Jazzy Jeff & The Fresh Prince	HipHop                        	\N	0	0	0	0
557	Ain't No Half-Steppin'	Big Daddy Kane	HipHop                        	\N	0	0	0	0
558	What You Know	T.I.	HipHop                        	\N	0	0	0	0
559	La Di Da Di	Slick Rick & Doug E. Fresh	HipHop                        	\N	0	0	0	0
560	Bonita Applebum	A Tribe Called Quest	HipHop                        	\N	0	0	0	0
561	The Definition	Mos Def & Talib Kweli	HipHop                        	\N	0	0	0	0
562	Just A Friend	Biz Markie	HipHop                        	\N	0	0	0	0
563	All About the Benjamins	Puff Daddy & Lil Kim & The LOX & The Notorious B.I.G.	HipHop                        	\N	0	0	0	0
564	Wild Thing	Tone-Loc	HipHop                        	\N	0	0	0	0
565	Get Ur Freak On	Missy Elliott	HipHop                        	\N	0	0	0	0
566	Rap God	Eminem	HipHop                        	\N	0	0	0	0
567	Not Afraid	Eminem	HipHop                        	\N	0	0	0	0
568	Mockingbird	Eminem	HipHop                        	\N	0	0	0	0
569	Triumph	Wu-Tang Clan	HipHop                        	\N	0	0	0	0
570	Regulate	Warren G. & Nate Dogg	HipHop                        	\N	0	0	0	0
571	The Choice Is Yours	Black Sheep	HipHop                        	\N	0	0	0	0
572	Gangsta's Paradise	Coolio	HipHop                        	\N	0	0	0	0
573	In Da Club	50 Cent	HipHop                        	\N	0	0	0	0
574	Ladies First	Queen Latifah & Monie Love	HipHop                        	\N	0	0	0	0
575	I Ain't No Joke	Eric B. & Rakim	HipHop                        	\N	0	0	0	0
576	Rebirth of Slick (Cool Like Dat)	Digable Planets	HipHop                        	\N	0	0	0	0
577	I'm Bad	LL Cool J	HipHop                        	\N	0	0	0	0
578	Top Billin'	Audio Two	HipHop                        	\N	0	0	0	0
579	Lyte As A Rock	MC Lyte	HipHop                        	\N	0	0	0	0
580	The Humpty Dance	Digital Underground	HipHop                        	\N	0	0	0	0
581	I Got 5 On It	The Luniz	HipHop                        	\N	0	0	0	0
582	Elevators (Me & You)	Outkast	HipHop                        	\N	0	0	0	0
583	You Got Me	The Roots	HipHop                        	\N	0	0	0	0
584	Paul Revere	The Beastie Boys	HipHop                        	\N	0	0	0	0
585	Colors	Ice T	HipHop                        	\N	0	0	0	0
586	P.S.K. (What Does It Mean)	Schoolly D	HipHop                        	\N	0	0	0	0
587	Boyz-N-The-Hood	Eazy E	HipHop                        	\N	0	0	0	0
588	Roxanne	U.T.F.O.	HipHop                        	\N	0	0	0	0
589	Shook Ones Pt II	Mobb Deep	HipHop                        	\N	0	0	0	0
590	Dirty South	Goodie MOB	HipHop                        	\N	0	0	0	0
591	Freaks Come Out At Night	Whodini	HipHop                        	\N	0	0	0	0
592	Big Pimpin'	Jay Z	HipHop                        	\N	0	0	0	0
593	Tennessee	Arrested Development	HipHop                        	\N	0	0	0	0
594	Deep Cover	Dr. Dre & Snoop Dog	HipHop                        	\N	0	0	0	0
595	It's the Joint	The Funky Four + 1	HipHop                        	\N	0	0	0	0
596	A Milli	Lil Wayne	HipHop                        	\N	0	0	0	0
597	Crush On You	Lil Kim	HipHop                        	\N	0	0	0	0
598	Ridin'	Chamillionaire & Krayzie Bone	HipHop                        	\N	0	0	0	0
599	6 In the Mornin'	Ice T	HipHop                        	\N	0	0	0	0
600	Bust A Move	Young MC	HipHop                        	\N	0	0	0	0
601	School	Pip Bloom	LoFi                          	\N	0	0	0	0
602	Sometimes	Snoh Aalegra	LoFi                          	\N	0	0	0	0
603	alone by your side	j'san	LoFi                          	\N	0	0	0	0
604	haHAA	xJK.	LoFi                          	\N	0	0	0	0
605	when ur gone	kasper x mowley	LoFi                          	\N	0	0	0	0
606	1998	iamalex	LoFi                          	\N	0	0	0	0
607	Seasons	Pale Grey	LoFi                          	\N	0	0	0	0
608	I Miss That Feeling	Tennis	LoFi                          	\N	0	0	0	0
609	Shades	Simon Jefferis	LoFi                          	\N	0	0	0	0
610	Trampoline//3:45 A.M.	Abe M Beats	LoFi                          	\N	0	0	0	0
611	Denim Pockets	93 Bulls	LoFi                          	\N	0	0	0	0
612	Countdown	King Gizzard and the Lizard Wizard	LoFi                          	\N	0	0	0	0
613	Good Enough	Mudhoney	LoFi                          	\N	0	0	0	0
614	Only Hope	Raindrop	LoFi                          	\N	0	0	0	0
765	Hot In Herre	Nelly	Rap                           	\N	0	0	0	0
615	Babies Are A Lie	Pip Blom	LoFi                          	\N	0	0	0	0
616	Serenade	saib.	LoFi                          	\N	0	0	0	0
617	Sugar	Dirty Art Club	LoFi                          	\N	0	0	0	0
618	Pimsoll Punks	Alvvays	LoFi                          	\N	0	0	0	0
619	Romeo Romeo	Ross From Friends	LoFi                          	\N	0	0	0	0
620	Enough of You (Karnaval Blues Remix)	Azad	LoFi                          	\N	0	0	0	0
622	Love and Cigarettes	Kedr Livanskiy	LoFi                          	\N	0	0	0	0
623	June Gloom	Prima	LoFi                          	\N	0	0	0	0
624	Dreams Tonite	Alvvays	LoFi                          	\N	0	0	0	0
625	Ice Boy	Corbin	LoFi                          	\N	0	0	0	0
627	12:34 AM	Bemos	LoFi                          	\N	0	0	0	0
628	Suicide Doors	Slyme	LoFi                          	\N	0	0	0	0
629	Ariadna	Kedr Livanskiy	LoFi                          	\N	0	0	0	0
630	Girl	Sobs	LoFi                          	\N	0	0	0	0
631	If you met her	Palehound	LoFi                          	\N	0	0	0	0
632	In Undertow	Alvvays	LoFi                          	\N	0	0	0	0
633	Together	iamalex	LoFi                          	\N	0	0	0	0
634	Tasteless	Bare Pales	LoFi                          	\N	0	0	0	0
635	The Good Times are Killing Me	Animal Husbandry	LoFi                          	\N	0	0	0	0
636	Nostalgia for places you have never been to	GRIGOR	LoFi                          	\N	0	0	0	0
637	Gibraltar Ape	Cabbage	LoFi                          	\N	0	0	0	0
638	I Forgot How To Fly	iamalex	LoFi                          	\N	0	0	0	0
639	Bobby	Alex G	LoFi                          	\N	0	0	0	0
640	Dead End	Holy Now	LoFi                          	\N	0	0	0	0
641	Lucky Girl	Fazerdaze	LoFi                          	\N	0	0	0	0
642	Forget U	DJ Seinfeld	LoFi                          	\N	0	0	0	0
643	Your Name	Bernache	LoFi                          	\N	0	0	0	0
644	My Connection	Sweet William	LoFi                          	\N	0	0	0	0
645	Hula Dancer	Blosson & The Kills	LoFi                          	\N	0	0	0	0
646	Khmlwugh	Homeshake	LoFi                          	\N	0	0	0	0
647	Let You Go	Deejay Astral	LoFi                          	\N	0	0	0	0
648	Johnny	Sofi TUKKER	LoFi                          	\N	0	0	0	0
649	luvsick	Killer Bee	LoFi                          	\N	0	0	0	0
650	Special K	Mac DeMarco	LoFi                          	\N	0	0	0	0
651	E n d u r a n c e	Invention	LoFi                          	\N	0	0	0	0
652	CGH	Yared Kiflai	LoFi                          	\N	0	0	0	0
653	Silver Lining	93 Bulls	LoFi                          	\N	0	0	0	0
654	yesterday	chinese food	LoFi                          	\N	0	0	0	0
655	Tik Tok	Kesha	Pop                           	\N	0	0	0	0
656	Imma Be	The Black Eyed Peas	Pop                           	\N	0	0	0	0
657	Break Your Heart	Taio Cruz & Ludacris	Pop                           	\N	0	0	0	0
658	Rude Boy	Rihann	Pop                           	\N	0	0	0	0
659	Nothin' on You	B.o.B & Bruno Mars	Pop                           	\N	0	0	0	0
660	OMG	Usher & will.i.am	Pop                           	\N	0	0	0	0
661	Not Afraid	Eminem	Pop                           	\N	0	0	0	0
662	California Gurls	Katy Perry & Snoop Dogg	Pop                           	\N	0	0	0	0
663	Love the Way You Lie	Eminem & Rihanna	Pop                           	\N	0	0	0	0
664	Teenage Dream	Katy Perry	Pop                           	\N	0	0	0	0
665	Just the Way You Are	Bruno Mars	Pop                           	\N	0	0	0	0
666	Like a G6	Far East Movement & The Cataracs & Dev	Pop                           	\N	0	0	0	0
667	We R Who We R	Kesha	Pop                           	\N	0	0	0	0
668	What's My Name?	Rihanna & Drake	Pop                           	\N	0	0	0	0
669	Only Girl (In the World)	Rihanna	Pop                           	\N	0	0	0	0
670	Raise Your Glass	Pink	Pop                           	\N	0	0	0	0
671	Firework	Katy Perry	Pop                           	\N	0	0	0	0
672	Grenade	Bruno Mars	Pop                           	\N	0	0	0	0
673	Hold It Against Me	Britney Spears	Pop                           	\N	0	0	0	0
674	Black and Yellow	Wiz Khalifa	Pop                           	\N	0	0	0	0
675	Born This Way	Lady Gaga	Pop                           	\N	0	0	0	0
676	E.T.	Katy Perry & Kanye West	Pop                           	\N	0	0	0	0
677	S.M	Rihanna & Britney Spears	Pop                           	\N	0	0	0	0
678	Rolling in the Deep	Adele	Pop                           	\N	0	0	0	0
679	Give Me Everything	Pitbull & Ne-Yo & Afrojack & Nayer	Pop                           	\N	0	0	0	0
680	Party Rock Anthem	LMFAO	Pop                           	\N	0	0	0	0
681	Last Friday Night (T.G.I.F.)	Katy Perry	Pop                           	\N	0	0	0	0
682	Moves Like Jagger	Maroon 5 & Christina Aguilera	Pop                           	\N	0	0	0	0
683	Someone Like You	Adele	Pop                           	\N	0	0	0	0
684	We Found Love	Rihanna & Calvin Harris	Pop                           	\N	0	0	0	0
685	Sexy and I Know It	LMFAO	Pop                           	\N	0	0	0	0
686	Set Fire to the Rain	Adele	Pop                           	\N	0	0	0	0
687	Stronger (What Doesn't Kill You)	Kelly Clarkson	Pop                           	\N	0	0	0	0
688	Part of Me	Katy Perry	Pop                           	\N	0	0	0	0
689	We Are Young	Fun	Pop                           	\N	0	0	0	0
690	Somebody That I Used to Know	Gotye & Kimbra	Pop                           	\N	0	0	0	0
691	Call Me Maybe	Carly Rae Jepsen	Pop                           	\N	0	0	0	0
692	Whistle	Flo Rida	Pop                           	\N	0	0	0	0
693	We Are Never Ever Getting Back Together	Taylor Swift	Pop                           	\N	0	0	0	0
694	One More Night	Maroon 5	Pop                           	\N	0	0	0	0
695	Diamonds	Rihanna	Pop                           	\N	0	0	0	0
696	Rude	Magic!	Pop                           	\N	0	0	0	0
697	Locked Out of Heaven	Bruno Mars	Pop                           	\N	0	0	0	0
698	Thrift Shop	Macklemore & Ryan Lewis & Wanz	Pop                           	\N	0	0	0	0
700	When I Was Your Man	Bruno Mars	Pop                           	\N	0	0	0	0
701	Just Give Me a Reason	Pink & Nate Ruess	Pop                           	\N	0	0	0	0
702	Can't Hold Us	Macklemore & Ryan Lewis	Pop                           	\N	0	0	0	0
703	Blurred Lines	Robin Thicke & T.I. & Pharrell	Pop                           	\N	0	0	0	0
704	Roar	Katy Perry	Pop                           	\N	0	0	0	0
705	Wrecking Ball	Miley Cyrus	Pop                           	\N	0	0	0	0
706	Royals	Lorde	Pop                           	\N	0	0	0	0
707	The Monster	Eminem & Rihanna	Pop                           	\N	0	0	0	0
708	Timber	Pitbull & Kesha	Pop                           	\N	0	0	0	0
709	Dark Horse	Katy Perry & Juicy J	Pop                           	\N	0	0	0	0
710	Happy	Pharrell Williams	Pop                           	\N	0	0	0	0
711	All of Me	John Legend	Pop                           	\N	0	0	0	0
712	Fancy	Iggy Azalea & Charli XCX	Pop                           	\N	0	0	0	0
713	Shake It Off	Taylor Swift	Pop                           	\N	0	0	0	0
714	All About That Bass	Meghan Trainor	Pop                           	\N	0	0	0	0
715	Blank Space	Taylor Swift	Pop                           	\N	0	0	0	0
716	Uptown Funk	Mark Ronson & Bruno Mars	Pop                           	\N	0	0	0	0
717	See You Again	Wiz Khalifa & Charlie Puth	Pop                           	\N	0	0	0	0
718	Bad Blood	Taylor Swift & Kendrick Lamar	Pop                           	\N	0	0	0	0
719	Cheerleader	OMI	Pop                           	\N	0	0	0	0
720	Can't Feel My Face	The Weeknd	Pop                           	\N	0	0	0	0
721	What Do You Mean?	Justin Bieber	Pop                           	\N	0	0	0	0
722	The Hills	The Weeknd	Pop                           	\N	0	0	0	0
723	Hello	Adele	Pop                           	\N	0	0	0	0
724	Sorry	Justin Bieber	Pop                           	\N	0	0	0	0
725	Love Yourself	Justin Bieber	Pop                           	\N	0	0	0	0
726	Pillowtalk	Zayn	Pop                           	\N	0	0	0	0
727	Work	Rihanna & Drake	Pop                           	\N	0	0	0	0
728	Panda	Desiigner	Pop                           	\N	0	0	0	0
729	One Dance	Drake & WizKid & Kyla	Pop                           	\N	0	0	0	0
730	Can't Stop the Feeling!	Justin Timberlake	Pop                           	\N	0	0	0	0
731	Cheap Thrills	Sia & Sean Paul	Pop                           	\N	0	0	0	0
732	Closer	The Chainsmokers & Halsey	Pop                           	\N	0	0	0	0
733	Black Beatles	Rae Sremmurd & Gucci Mane	Pop                           	\N	0	0	0	0
734	Starboy	The Weeknd & Daft Punk	Pop                           	\N	0	0	0	0
735	Bad and Boujee	Migos & Lil Uzi Vert	Pop                           	\N	0	0	0	0
736	Shape of You	Ed Sheeran	Pop                           	\N	0	0	0	0
737	Humble	Kendrick Lamar	Pop                           	\N	0	0	0	0
738	That's What I Like	Bruno Mars	Pop                           	\N	0	0	0	0
739	I'm the One	DJ Khaled & Justin Bieber & Quavo & Chance the Rapper & Lil Wayne	Pop                           	\N	0	0	0	0
740	Despacito	Luis Fonsi & Daddy Yankee & Justin Bieber	Pop                           	\N	0	0	0	0
741	Look What You Made Me Do	Taylor Swift	Pop                           	\N	0	0	0	0
742	Bodak Yellow (Money Moves)	Cardi B	Pop                           	\N	0	0	0	0
743	Rockstar	Post Malone & 21 Savage	Pop                           	\N	0	0	0	0
744	I Hate My Job	Cam'ron	Rap                           	\N	0	0	0	0
745	Mic Check	Juelz Santana	Rap                           	\N	0	0	0	0
746	Meat Grinder	Mad Villain	Rap                           	\N	0	0	0	0
747	No regrets	Masta Ace	Rap                           	\N	0	0	0	0
748	Strange Ways	Mad Villain	Rap                           	\N	0	0	0	0
749	What U Gon' Do	Lil Jon	Rap                           	\N	0	0	0	0
750	Acid Raindrops	People Under The Stairs	Rap                           	\N	0	0	0	0
751	Uncle Sam	Brother Ali	Rap                           	\N	0	0	0	0
752	Lean With It Rock With It	Dem Franchize Boys	Rap                           	\N	0	0	0	0
753	That's That Shit	Snoop Dogg	Rap                           	\N	0	0	0	0
754	Still Fly	Big Tymers	Rap                           	\N	0	0	0	0
755	Hip-Hop	Joell Ortiz	Rap                           	\N	0	0	0	0
756	Lean Back	Terror Squad	Rap                           	\N	0	0	0	0
757	Fix Up Look Sharp	Dizzee Rascal	Rap                           	\N	0	0	0	0
758	It's Your World	Common	Rap                           	\N	0	0	0	0
759	Poet Laureate II	Canibus	Rap                           	\N	0	0	0	0
760	A Life In The Day Of Benjamin' Andre	Outkast	Rap                           	\N	0	0	0	0
761	10 Bricks	Raekwon	Rap                           	\N	0	0	0	0
762	Get Your Freak On	Missy Elliot	Rap                           	\N	0	0	0	0
763	Fireman	Lil Wayne	Rap                           	\N	0	0	0	0
764	Westside Story	Game	Rap                           	\N	0	0	0	0
766	Quiet Dog Bite Hard	Mos Def	Rap                           	\N	0	0	0	0
767	Why We Thugs	Ice Cube	Rap                           	\N	0	0	0	0
768	Country Grammar	Nelly	Rap                           	\N	0	0	0	0
769	The Kramer	Wale	Rap                           	\N	0	0	0	0
770	Accordian	Mad Villain	Rap                           	\N	0	0	0	0
771	Rubberband Man	T.I.	Rap                           	\N	0	0	0	0
772	Ride Wit Me	Nelly	Rap                           	\N	0	0	0	0
773	Uncommon Valor	Jedi Mind Tricks	Rap                           	\N	0	0	0	0
774	Purple	Nas	Rap                           	\N	0	0	0	0
775	Rising Up	The Roots	Rap                           	\N	0	0	0	0
776	What More Can I Say	Jay Z	Rap                           	\N	0	0	0	0
777	Eternal Sunshine	Jay Electronica	Rap                           	\N	0	0	0	0
778	Soul Survivor	Young Jeezy	Rap                           	\N	0	0	0	0
779	Stay Fly	Three 6 Mafia	Rap                           	\N	0	0	0	0
780	Overnight Celebrity	Twista	Rap                           	\N	0	0	0	0
781	Lollipop	Lil Wayne	Rap                           	\N	0	0	0	0
782	Black Republican	Nas	Rap                           	\N	0	0	0	0
783	Move Bitch	Ludacris	Rap                           	\N	0	0	0	0
784	D.O.A	Jay Z	Rap                           	\N	0	0	0	0
785	Big Brother	Kanye West	Rap                           	\N	0	0	0	0
786	Paris Tokyo	Lupe Fiasco	Rap                           	\N	0	0	0	0
787	What You Know	T.I.	Rap                           	\N	0	0	0	0
788	Hustlin	Rick Ross	Rap                           	\N	0	0	0	0
789	Paper Planes	MIA	Rap                           	\N	0	0	0	0
790	White America	Eminem	Rap                           	\N	0	0	0	0
791	Kim	Eminem	Rap                           	\N	0	0	0	0
792	Big Pimpin	Jay Z	Rap                           	\N	0	0	0	0
793	Takeover	Jay Z	Rap                           	\N	0	0	0	0
794	Dirt off your Shoulder	Jay Z	Rap                           	\N	0	0	0	0
795	Odd Toddlers	Odd Future	Rap                           	\N	0	0	0	0
796	Mr. Carter	Lil Wayne	Rap                           	\N	0	0	0	0
797	Ridin	Chamillionaire	Rap                           	\N	0	0	0	0
798	Us Placers	Child Rebel Soldiers	Rap                           	\N	0	0	0	0
799	The People	Common	Rap                           	\N	0	0	0	0
800	So Fresh So Clean	OutKast	Rap                           	\N	0	0	0	0
801	The Light	Common	Rap                           	\N	0	0	0	0
802	Classic	Rakim & Nas & Kanye West & KRS-One	Rap                           	\N	0	0	0	0
803	Swagger Like Us	T.I.	Rap                           	\N	0	0	0	0
804	All Caps	Mad Villain	Rap                           	\N	0	0	0	0
805	International Players Anthem	UGK	Rap                           	\N	0	0	0	0
806	Drop It Like It's Hot	Snoop Dogg	Rap                           	\N	0	0	0	0
807	Made You Look	Nas	Rap                           	\N	0	0	0	0
808	A Milli	Lil Wayne	Rap                           	\N	0	0	0	0
809	Gone	Kanye West	Rap                           	\N	0	0	0	0
810	Super Star	Lupe Fiasco	Rap                           	\N	0	0	0	0
811	Lights Please	J. Cole	Rap                           	\N	0	0	0	0
812	B.O.B.	OutKast	Rap                           	\N	0	0	0	0
813	Izzo (H.O.V.A.)	Jay Z	Rap                           	\N	0	0	0	0
814	Hey Ya	OutKast	Rap                           	\N	0	0	0	0
815	Cleanin Out My Closet	Eminem	Rap                           	\N	0	0	0	0
816	Like Toy Soldiers	Eminem	Rap                           	\N	0	0	0	0
817	Day 'n' Nite	Kid Cudi	Rap                           	\N	0	0	0	0
818	Gold Digger	Kanye West	Rap                           	\N	0	0	0	0
819	Empire State Of Mind	Jay Z	Rap                           	\N	0	0	0	0
820	Hip Hop Saved My Life	Lupe Fiasco	Rap                           	\N	0	0	0	0
821	Till I Collapse	Eminem	Rap                           	\N	0	0	0	0
822	In Da Club	50 Cent	Rap                           	\N	0	0	0	0
823	Exhibit C	Jay Electronica	Rap                           	\N	0	0	0	0
824	Day Dreamin'	Lupe Fiasco	Rap                           	\N	0	0	0	0
825	Forever	Drake	Rap                           	\N	0	0	0	0
826	Hate It Or Love It	Game	Rap                           	\N	0	0	0	0
827	Kick Push	Lupe Fiasco	Rap                           	\N	0	0	0	0
828	The Way I Am	Eminem	Rap                           	\N	0	0	0	0
829	Get By	Talib Kweli	Rap                           	\N	0	0	0	0
830	Diamonds From Sierra Leone	Kanye West	Rap                           	\N	0	0	0	0
831	Stronger	Kanye West	Rap                           	\N	0	0	0	0
832	Ether	Nas	Rap                           	\N	0	0	0	0
833	Forget About Dre	Dr. Dre	Rap                           	\N	0	0	0	0
834	Pursuit Of Happiness	Kid Cudi	Rap                           	\N	0	0	0	0
835	Ms. Jackson	OutKast	Rap                           	\N	0	0	0	0
836	Bastard	Tyler The Creator	Rap                           	\N	0	0	0	0
837	Lose Yourself	Eminem	Rap                           	\N	0	0	0	0
838	One Mic	Nas	Rap                           	\N	0	0	0	0
839	Jesus Walks	Kanye West	Rap                           	\N	0	0	0	0
\.


--
-- Name: songdata_songid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.songdata_songid_seq', 839, true);


--
-- Name: songdata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songdata
    ADD CONSTRAINT songdata_pkey PRIMARY KEY (songid);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

