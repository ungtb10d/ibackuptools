CREATE TABLE ZADDITIONALASSETATTRIBUTES ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZEMBEDDEDTHUMBNAILHEIGHT INTEGER,
    ZEMBEDDEDTHUMBNAILLENGTH INTEGER,
    ZEMBEDDEDTHUMBNAILOFFSET INTEGER,
    ZEMBEDDEDTHUMBNAILWIDTH INTEGER,
    ZHIGHDYNAMICRANGETYPE INTEGER,
    ZORIGINALFILESIZE INTEGER,
    ZORIGINALHEIGHT INTEGER,
    ZORIGINALORIENTATION INTEGER,
    ZORIGINALWIDTH INTEGER,
    ZASSET INTEGER,
    Z14_ASSET INTEGER,
    ZDURATION FLOAT,
    ZCREATORBUNDLEID VARCHAR,
    ZORIGINALFILENAME VARCHAR,
    ZORIGINALPATH VARCHAR,
    ZIMPORTSESSIONID BLOB,
    ZORIGINALASSETSUUID BLOB );
CREATE INDEX ZADDITIONALASSETATTRIBUTES_ZCREATORBUNDLEID_INDEX ON ZADDITIONALASSETATTRIBUTES (ZCREATORBUNDLEID);
CREATE INDEX ZADDITIONALASSETATTRIBUTES_ZORIGINALASSETSUUID_INDEX ON ZADDITIONALASSETATTRIBUTES (ZORIGINALASSETSUUID);
CREATE INDEX ZADDITIONALASSETATTRIBUTES_ZASSET_INDEX ON ZADDITIONALASSETATTRIBUTES (ZASSET);
CREATE TABLE ZADJUSTMENT ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZIDENTIFIER INTEGER,
    ZASSET INTEGER,
    Z14_ASSET INTEGER,
    Z_FOK_ASSET INTEGER,
    ZFILTERNAME VARCHAR,
    ZFILTERSETTINGS BLOB );
CREATE INDEX ZADJUSTMENT_ZASSET_INDEX ON ZADJUSTMENT (ZASSET);
CREATE TABLE ZALBUMLIST ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZIDENTIFIER INTEGER,
    ZNEEDSREORDERINGNUMBER INTEGER,
    ZPENDINGITEMSCOUNT INTEGER );
CREATE TABLE ZCLOUDSHAREDALBUMINVITATIONRECORD ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZINVITATIONSTATE INTEGER,
    ZINVITATIONSTATELOCAL INTEGER,
    ZINVITEEEMAILKEY INTEGER,
    ZALBUM INTEGER,
    Z_FOK_ALBUM INTEGER,
    ZALBUMGUID VARCHAR,
    ZCLOUDGUID VARCHAR,
    ZINVITEEFIRSTNAME VARCHAR,
    ZINVITEELASTNAME VARCHAR );
CREATE INDEX ZCLOUDSHAREDALBUMINVITATIONRECORD_ZALBUM_INDEX ON ZCLOUDSHAREDALBUMINVITATIONRECORD (ZALBUM);
CREATE TABLE ZCLOUDSHAREDCOMMENT ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCOMMENTEREMAILKEY INTEGER,
    ZISCAPTION INTEGER,
    ZISDELETABLE INTEGER,
    ZISLIKE INTEGER,
    ZISMYCOMMENT INTEGER,
    ZCOMMENTEDASSET INTEGER,
    Z14_COMMENTEDASSET INTEGER,
    ZLIKEDASSET INTEGER,
    Z14_LIKEDASSET INTEGER,
    Z_FOK_LIKEDASSET INTEGER,
    Z_FOK_COMMENTEDASSET INTEGER,
    ZCOMMENTDATE TIMESTAMP,
    ZCLOUDGUID VARCHAR,
    ZCOMMENTTEXT VARCHAR,
    ZCOMMENTTYPE VARCHAR,
    ZCOMMENTERFIRSTNAME VARCHAR,
    ZCOMMENTERLASTNAME VARCHAR );
CREATE INDEX ZCLOUDSHAREDCOMMENT_ZCOMMENTEDASSET_INDEX ON ZCLOUDSHAREDCOMMENT (ZCOMMENTEDASSET);
CREATE INDEX ZCLOUDSHAREDCOMMENT_ZLIKEDASSET_INDEX ON ZCLOUDSHAREDCOMMENT (ZLIKEDASSET);
CREATE TABLE ZFACE ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZIDENTIFIER INTEGER,
    ZASSET INTEGER,
    Z14_ASSET INTEGER,
    ZALBUMUUID BLOB,
    ZRELATIVERECTVALUE BLOB );
CREATE INDEX ZFACE_ZALBUMUUID_INDEX ON ZFACE (ZALBUMUUID);
CREATE INDEX ZFACE_ZIDENTIFIER_INDEX ON ZFACE (ZIDENTIFIER);
CREATE INDEX ZFACE_ZASSET_INDEX ON ZFACE (ZASSET);
CREATE TABLE ZGENERICALBUM ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCACHEDCOUNT INTEGER,
    ZCACHEDPHOTOSCOUNT INTEGER,
    ZCACHEDVIDEOSCOUNT INTEGER,
    ZKIND INTEGER,
    ZPENDINGITEMSCOUNT INTEGER,
    ZPENDINGITEMSTYPE INTEGER,
    ZKEYASSET INTEGER,
    Z14_KEYASSET INTEGER,
    ZCLOUDOWNEREMAILKEY INTEGER,
    ZCLOUDPUBLICURLENABLED INTEGER,
    ZCLOUDPUBLICURLENABLEDLOCAL INTEGER,
    ZCLOUDRELATIONSHIPSTATE INTEGER,
    ZCLOUDRELATIONSHIPSTATELOCAL INTEGER,
    ZHASUNSEENCONTENT INTEGER,
    ZISOWNED INTEGER,
    ZUNSEENASSETSCOUNT INTEGER,
    ZKEYASSETFACEIDENTIFIER INTEGER,
    ZKEYASSETFACETHUMBNAILINDEX INTEGER,
    ZCLOUDLASTINTERESTINGCHANGEDATE TIMESTAMP,
    ZTITLE VARCHAR,
    ZCLOUDGUID VARCHAR,
    ZCLOUDOWNERFIRSTNAME VARCHAR,
    ZCLOUDOWNERLASTNAME VARCHAR,
    ZCLOUDPERSONID VARCHAR,
    ZPUBLICURL VARCHAR,
    ZIMPORTSESSIONID BLOB,
    ZUUID BLOB,
    ZCLOUDMETADATA BLOB );
CREATE INDEX ZGENERICALBUM_ZKIND_INDEX ON ZGENERICALBUM (ZKIND);
CREATE INDEX ZGENERICALBUM_ZUUID_INDEX ON ZGENERICALBUM (ZUUID);
CREATE INDEX ZGENERICALBUM_ZKEYASSET_INDEX ON ZGENERICALBUM (ZKEYASSET);
CREATE INDEX ZGENERICALBUM_Z_ENT_INDEX ON ZGENERICALBUM (Z_ENT);
CREATE TABLE Z_7ALBUMLISTS ( Z_7ALBUMS INTEGER,
    Z_3ALBUMLISTS INTEGER,
    Z_FOK_7ALBUMS INTEGER,
    PRIMARY KEY (Z_7ALBUMS,
    Z_3ALBUMLISTS) );
CREATE TABLE Z_8ASSETS ( Z_8ALBUMS INTEGER,
    Z_14ASSETS INTEGER,
    Z_FOK_14ASSETS INTEGER,
    PRIMARY KEY (Z_8ALBUMS,
    Z_14ASSETS) );
CREATE TABLE ZGENERICASSET ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCLOUDHASCOMMENTSBYME INTEGER,
    ZCLOUDHASCOMMENTSCONVERSATION INTEGER,
    ZCLOUDHASUNSEENCOMMENTS INTEGER,
    ZCLOUDPLACEHOLDERKIND INTEGER,
    ZCOMPLETE INTEGER,
    ZFLAGGED INTEGER,
    ZHEIGHT INTEGER,
    ZKIND INTEGER,
    ZORIENTATION INTEGER,
    ZSAVEDASSETTYPE INTEGER,
    ZTHUMBNAILINDEX INTEGER,
    ZWIDTH INTEGER,
    ZADDITIONALATTRIBUTES INTEGER,
    ZCLOUDBATCHPUBLISHDATE TIMESTAMP,
    ZCLOUDLASTVIEWEDCOMMENTDATE TIMESTAMP,
    ZDATECREATED TIMESTAMP,
    ZMODIFICATIONDATE TIMESTAMP,
    ZSORTTOKEN FLOAT,
    ZCLOUDASSETGUID VARCHAR,
    ZCLOUDASSETKIND VARCHAR,
    ZCLOUDBATCHID VARCHAR,
    ZCLOUDCOLLECTIONGUID VARCHAR,
    ZDIRECTORY VARCHAR,
    ZFILENAME VARCHAR,
    ZTITLE VARCHAR,
    ZUNIFORMTYPEIDENTIFIER VARCHAR,
    ZCLOUDMETADATA BLOB,
    ZFACERECTANGLES BLOB,
    ZUUID BLOB,
    ZLOCATIONDATA BLOB,
    ZIMAGEURLDATA BLOB,
    ZTHUMBNAILURLDATA BLOB );
CREATE INDEX ZGENERICASSET_ZCLOUDPLACEHOLDERKIND_INDEX ON ZGENERICASSET (ZCLOUDPLACEHOLDERKIND);
CREATE INDEX ZGENERICASSET_ZCOMPLETE_INDEX ON ZGENERICASSET (ZCOMPLETE);
CREATE INDEX ZGENERICASSET_ZDATECREATED_INDEX ON ZGENERICASSET (ZDATECREATED);
CREATE INDEX ZGENERICASSET_ZKIND_INDEX ON ZGENERICASSET (ZKIND);
CREATE INDEX ZGENERICASSET_ZSAVEDASSETTYPE_INDEX ON ZGENERICASSET (ZSAVEDASSETTYPE);
CREATE INDEX ZGENERICASSET_ZSORTTOKEN_INDEX ON ZGENERICASSET (ZSORTTOKEN);
CREATE INDEX ZGENERICASSET_ZUUID_INDEX ON ZGENERICASSET (ZUUID);
CREATE INDEX ZGENERICASSET_ZADDITIONALATTRIBUTES_INDEX ON ZGENERICASSET (ZADDITIONALATTRIBUTES);
CREATE INDEX ZGENERICASSET_Z_ENT_INDEX ON ZGENERICASSET (Z_ENT);
CREATE INDEX ZGENERICASSET_ZKIND_Z_PK ON ZGENERICASSET (ZKIND,
    Z_PK);
CREATE TABLE ZKEYWORD ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZTITLE VARCHAR );
CREATE TABLE ZSIDECARFILE ( Z_PK INTEGER PRIMARY KEY,
    Z_ENT INTEGER,
    Z_OPT INTEGER,
    ZCOMPRESSEDSIZE INTEGER,
    ZINDEX INTEGER,
    ZASSET INTEGER,
    Z14_ASSET INTEGER,
    ZCAPTUREDATE TIMESTAMP,
    ZMODIFICATIONDATE TIMESTAMP,
    ZFILENAME VARCHAR,
    ZORIGINALFILENAME VARCHAR,
    ZUNIFORMTYPEIDENTIFIER VARCHAR );
CREATE INDEX ZSIDECARFILE_ZASSET_INDEX ON ZSIDECARFILE (ZASSET);
CREATE TABLE Z_PRIMARYKEY (Z_ENT INTEGER PRIMARY KEY,
    Z_NAME VARCHAR,
    Z_SUPER INTEGER,
    Z_MAX INTEGER);
CREATE TABLE Z_METADATA (Z_VERSION INTEGER PRIMARY KEY,
    Z_UUID VARCHAR(255),
    Z_PLIST BLOB);
CREATE INDEX RADAR_10322662_INDEX ON Z_8ASSETS (Z_8ALBUMS,
    Z_FOK_14ASSETS,
    Z_14ASSETS);
