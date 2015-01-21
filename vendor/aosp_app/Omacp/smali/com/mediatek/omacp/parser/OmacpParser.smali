.class public Lcom/mediatek/omacp/parser/OmacpParser;
.super Ljava/lang/Object;
.source "OmacpParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omacp/parser/OmacpParser$1;,
        Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;
    }
.end annotation


# static fields
.field public static final ATTR_START_TABLE_PAGE0:[Ljava/lang/String; = null

.field public static final ATTR_START_TABLE_PAGE1:[Ljava/lang/String; = null

.field public static final ATTR_VALUE_TABLE_PAGE0:[Ljava/lang/String; = null

.field public static final ATTR_VALUE_TABLE_PAGE1:[Ljava/lang/String; = null

.field private static final CHARACTERISTIC:Ljava/lang/String; = "characteristic"

.field private static final PARM:Ljava/lang/String; = "parm"

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpParser"

.field public static final TAG_TABLE_PAGE0:[Ljava/lang/String;

.field public static final TAG_TABLE_PAGE1:[Ljava/lang/String;


# instance fields
.field private mApSectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;"
        }
    .end annotation
.end field

.field private mContextName:Ljava/lang/String;

.field private mNapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ">;"
        }
    .end annotation
.end field

.field private mParser:Ljava/lang/Object;

.field private mPxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "wap-provisioningdoc"

    aput-object v1, v0, v3

    const-string v1, "characteristic"

    aput-object v1, v0, v4

    const-string v1, "parm"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/omacp/parser/OmacpParser;->TAG_TABLE_PAGE0:[Ljava/lang/String;

    .line 120
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "characteristic"

    aput-object v1, v0, v4

    const-string v1, "parm"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/omacp/parser/OmacpParser;->TAG_TABLE_PAGE1:[Ljava/lang/String;

    .line 124
    const/16 v0, 0x57

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    const-string v1, "name=NAME"

    aput-object v1, v0, v5

    const-string v1, "name=NAP-ADDRESS"

    aput-object v1, v0, v6

    const-string v1, "name=NAP-ADDRTYPE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name=CALLTYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name=VALIDUNTIL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name=AUTHTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name=AUTHNAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "name=AUTHSECRET"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "name=LINGER"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "name=BEARER"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "name=NAPID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "name=COUNTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "name=NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "name=INTERNET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "name=PROXY-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "name=PROXY-PROVIDER-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "name=DOMAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "name=PROVURL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "name=PXAUTH-TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "name=PXAUTH-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "name=PXAUTH-PW"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "name=STARTPAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "name=BASAUTH-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "name=BASAUTH-PW"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "name=PUSHENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "name=PXADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "name=PXADDRTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "name=TO-NAPID"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "name=PORTNBR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "name=SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "name=LINKSPEED"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "name=DNLINKSPEED"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "name=LOCAL-ADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "name=LOCAL-ADDRTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "name=CONTEXT-ALLOW"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "name=TRUST"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "name=MASTER"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "name=SID"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "name=SOC"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "name=WSP-VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "name=PHYSICAL-PROXY-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "name=CLIENT-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "name=DELIVERY-ERR-SDU"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "name=DELIVERY-ORDER"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "name=TRAFFIC-CLASS"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "name=MAX-SDU-SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "name=MAX-BITRATE-UPLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "name=MAX-BITRATE-DNLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "name=RESIDUAL-BER"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "name=SDU-ERROR-RATIO"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "name=TRAFFIC-HANDL-PRIO"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "name=TRANSFER-DELAY"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "name=GUARANTEED-BITRATE-UPLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "name=GUARANTEED-BITRATE-DNLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "name=PXADDR-FQDN"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "name=PROXY-PW"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "name=PPGAUTH-TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "version=1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "name=PULLENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "name=DNS-ADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "name=MAX-NUM-RETRY"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "name=FIRST-RETRY-TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "name=REREG-THRESHOLD"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "name=T-BIT"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "name=AUTH-ENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "name=SPI"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "type=PXLOGICAL"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "type=PXPHYSICAL"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "type=PORT"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "type=VALIDITY"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "type=NAPDEF"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "type=BOOTSTRAP"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "type=VENDORCONFIG"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "type=CLIENTIDENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "type=PXAUTHINFO"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "type=NAPAUTHINFO"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "type=ACCESS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_START_TABLE_PAGE0:[Ljava/lang/String;

    .line 147
    const/16 v0, 0x57

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    const-string v1, "name=NAME"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "name=INTERNET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "name=STARTPAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "name=TO-NAPID"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "name=PORTNBR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "name=SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "name=ACCEPT"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "name=AAUTHDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "name=AAUTHLEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "name=AAUTHNAME"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "name=AAUTHSECRET"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "name=AAUTHTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "name=ADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "name=ADDRTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "name=APPID"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "name=ARPOTOCOL"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "name=PROVIDER-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "name=TO-PROXY"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "name=URI"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "name=RULE"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "type=PORT"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "type=APPLICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "type=APPADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "type=APPAUTH"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "type=CLIENTIDENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "type=RESOURCE"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_START_TABLE_PAGE1:[Ljava/lang/String;

    .line 166
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IPV4"

    aput-object v1, v0, v3

    const-string v1, "IPV6"

    aput-object v1, v0, v4

    const-string v1, "E164"

    aput-object v1, v0, v5

    const-string v1, "ALPHA"

    aput-object v1, v0, v6

    const-string v1, "APN"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SCODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TETRA-ITSI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ANALOG-MODEM"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "V.120"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "V.110"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "X.31"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BIT-TRANSPARENT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DIRECT-ASYNCHRONOUS-DATA-SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "PAP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CHAP"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "HTTP-BASIC"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "HTTP-DIGEST"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "WTLS-SS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "MD5"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "GSM-USSD"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "GSM-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ANSI-136-GUTS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "IS-95-CDMA-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "IS-95-CDMA-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "IS-95-CDMA-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ANSI-136-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ANSI-136-GPRS"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "GSM-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "GSM-GPRS"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "AMPS-CDPD"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "PDC-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "PDC-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "IDEN-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "IDEN-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "IDEN-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "FLEX/REFLEX"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "PHS-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "PHS-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "TETRA-SDS"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "TETRA-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "ANSI-136-GHOST"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "MOBITEX-MPAK"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "CDMA2000-1X-SIMPLE-IP"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "CDMA2000-1X-MOBILE-IP"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "AUTOBAUDING"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "CL-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "CO-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "CL-SEC-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "CO-SEC-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "CL-SEC-WTA"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "CO-SEC-WTA"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "OTA-HTTP-TO"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "OTA-HTTP-TLS-TO"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "OTA-HTTP-PO"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "OTA-HTTP-TLS-PO"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "AAA"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "HA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_VALUE_TABLE_PAGE0:[Ljava/lang/String;

    .line 187
    const/16 v0, 0x91

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "NAME"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "INTERNET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "STARTPAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "TO-NAPID"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PORTNBR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ACCEPT"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "AAUTHDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "AAUTHLEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "AAUTHNAME"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "AAUTHSECRET"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "AAUTHTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ADDRTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "APPID"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "ARPOTOCOL"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "PROVIDER-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "TO-PROXY"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "URI"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "RULE"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "PORT"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "APPLICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "APPADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "APPAUTH"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "CLIENTIDENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "RESOURCE"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "IPV6"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "E164"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "ALPHA"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "APPSRV"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "OBEX"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, ",(comma character"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "HTTP-"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "BASIC"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "DIGEST"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_VALUE_TABLE_PAGE1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mApSectionList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mPxList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mNapList:Ljava/util/ArrayList;

    return-void
.end method

.method private getAppCharacteristicParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 2
    .parameter "omacpParserData"

    .prologue
    .line 395
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    new-instance v0, Lcom/mediatek/omacp/parser/ApplicationClass;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/ApplicationClass;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    .line 397
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mApSectionList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "APPADDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    new-instance v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mAppAddr:Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    .line 401
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mAppAddr:Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "PORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/parser/OmacpParser;->getPortParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V

    goto :goto_0

    .line 406
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "APPAUTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    new-instance v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mAppAuth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    .line 408
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mAppAuth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_4
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "RESOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    new-instance v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mResource:Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    .line 413
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mResource:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mResource:Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_5
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "NAPAUTHINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 417
    new-instance v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapAuthInfo:Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    .line 418
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapAuthInfo:Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 421
    :cond_6
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "VALIDITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/NapdefClass$Validity;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mValidity:Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    .line 423
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass;->mValidity:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mValidity:Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getAttributeParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 5
    .parameter "omacpParserData"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmName:Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    const-string v2, "value"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmValue:Ljava/lang/String;

    .line 493
    :goto_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v1, "APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmName:Ljava/lang/String;

    iget-object v2, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleApParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    .line 508
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "BOOTSTRAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmName:Ljava/lang/String;

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mContextName:Ljava/lang/String;

    .line 512
    :cond_1
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v0, v0, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-virtual {v0}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmName:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmValue:Ljava/lang/String;

    goto :goto_0

    .line 490
    :cond_3
    const-string v0, "Omacp/OmacpParser"

    const-string v1, "OmacpParserBase unknown parser type."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_4
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v1, "NAPDEF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmName:Ljava/lang/String;

    iget-object v2, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleNapParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V

    goto :goto_1

    .line 500
    :cond_5
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v1, "PXLOGICAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v1, "PXPHYSICAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :cond_6
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    iget-object v2, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmName:Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mParmValue:Ljava/lang/String;

    iget-object v4, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handlePxParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ProxyClass;)V

    goto/16 :goto_1
.end method

.method private getCharacteristicParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 2
    .parameter "omacpParserData"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/parser/OmacpParser;->getParserUriAndType(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V

    .line 370
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "PXLOGICAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Lcom/mediatek/omacp/parser/ProxyClass;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/ProxyClass;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    .line 372
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mPxList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "PXPHYSICAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    new-instance v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPxPhysical:Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    .line 376
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPxPhysical:Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_2
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    goto :goto_0

    .line 380
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "PXAUTHINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    new-instance v0, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPxAuthInfo:Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    .line 382
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ProxyClass;->mPxauthinfo:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPxAuthInfo:Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_4
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "NAPDEF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    new-instance v0, Lcom/mediatek/omacp/parser/NapdefClass;

    invoke-direct {v0}, Lcom/mediatek/omacp/parser/NapdefClass;-><init>()V

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

    .line 387
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mNapList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_5
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/parser/OmacpParser;->getAppCharacteristicParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V

    goto :goto_0
.end method

.method private getEndTagData(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 2
    .parameter "omacpParserData"

    .prologue
    .line 304
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mName:Ljava/lang/String;

    const-string v1, "CHARACTERISTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 306
    const-string v0, "Omacp/OmacpParser"

    const-string v1, "OmacpParserBase END_TAG type is null."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "PORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v1, "APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "APPADDR"

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v1, "PXPHYSICAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    const-string v0, "PXPHYSICAL"

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v1, "PXLOGICAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "PXLOGICAL"

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "APPADDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "APPAUTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "RESOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    :cond_5
    const-string v0, "APPLICATION"

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_6
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "NAPAUTHINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "VALIDITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 324
    :cond_7
    const-string v0, "NAPDEF"

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_8
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "PXAUTHINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    const-string v1, "PXPHYSICAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :cond_9
    const-string v0, "PXLOGICAL"

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getEventType()I
    .locals 5

    .prologue
    .line 333
    const/4 v1, -0x1

    .line 335
    .local v1, eventType:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v2, v2, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 347
    :goto_0
    return v1

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v2, v2, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v2, Lorg/kxml2/wap/WbxmlParser;

    invoke-virtual {v2}, Lorg/kxml2/wap/WbxmlParser;->next()I

    move-result v1

    goto :goto_0

    .line 340
    :cond_1
    const-string v2, "Omacp/OmacpParser"

    const-string v3, "OmacpParserBase unknown parser type."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Omacp/OmacpParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmacpParser get eventType Exception, e is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 345
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Omacp/OmacpParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmacpParser get eventType Exception, e is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getParserName(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 2
    .parameter "omacpParserData"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mName:Ljava/lang/String;

    .line 359
    :goto_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 360
    const-string v0, "Omacp/OmacpParser"

    const-string v1, "OmacpParserBase START_TAG name is null."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v0, v0, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-virtual {v0}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mName:Ljava/lang/String;

    goto :goto_0

    .line 356
    :cond_2
    const-string v0, "Omacp/OmacpParser"

    const-string v1, "OmacpParserBase unknown parser type."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getParserUriAndType(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 3
    .parameter "omacpParserData"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    .line 440
    :goto_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 441
    const-string v0, "Omacp/OmacpParser"

    const-string v1, "OmacpParserBase START_TAG type is null."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v0, v0, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-virtual {v0}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v0, Lorg/kxml2/wap/WbxmlParser;

    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mUri:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mType:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_1
    const-string v0, "Omacp/OmacpParser"

    const-string v1, "OmacpParserBase unknown parser type."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_2
    return-void
.end method

.method private getPortParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 3
    .parameter "omacpParserData"

    .prologue
    .line 447
    new-instance v1, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    invoke-direct {v1}, Lcom/mediatek/omacp/parser/ApplicationClass$Port;-><init>()V

    iput-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPort:Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    .line 449
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 450
    const-string v1, "Omacp/OmacpParser"

    const-string v2, "OmacpParserBase START_TAG listType is null."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v2, "APPLICATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 457
    .local v0, size:I
    if-eqz v0, :cond_2

    .line 458
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPort:Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_2
    const-string v1, "Omacp/OmacpParser"

    const-string v2, "OmacpParserBase invalid APPADDR definition"

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v0           #size:I
    :cond_3
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v2, "PXLOGICAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 464
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass;->mPort:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPort:Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_4
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mListType:Ljava/lang/String;

    const-string v2, "PXPHYSICAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 470
    .restart local v0       #size:I
    if-eqz v0, :cond_5

    .line 471
    iget-object v1, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mPort:Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    :cond_5
    const-string v1, "Omacp/OmacpParser"

    const-string v2, "OmacpParserBase invalid PXPHYSICAL definition"

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getStartTagData(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    .locals 2
    .parameter "omacpParserData"

    .prologue
    .line 290
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mName:Ljava/lang/String;

    const-string v1, "characteristic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/parser/OmacpParser;->getCharacteristicParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->mName:Ljava/lang/String;

    const-string v1, "parm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/parser/OmacpParser;->getAttributeParams(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V

    goto :goto_0
.end method

.method public static getTextParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 224
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    return-object v0
.end method

.method public static getWbxmlParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 229
    .local v0, parser:Lorg/kxml2/wap/WbxmlParser;
    sget-object v1, Lcom/mediatek/omacp/parser/OmacpParser;->TAG_TABLE_PAGE0:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_START_TABLE_PAGE0:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_VALUE_TABLE_PAGE0:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 233
    sget-object v1, Lcom/mediatek/omacp/parser/OmacpParser;->TAG_TABLE_PAGE1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_START_TABLE_PAGE1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 235
    sget-object v1, Lcom/mediatek/omacp/parser/OmacpParser;->ATTR_VALUE_TABLE_PAGE1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 237
    return-object v0
.end method


# virtual methods
.method public getApSectionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mApSectionList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->removeInvalidApSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContextName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mContextName:Ljava/lang/String;

    return-object v0
.end method

.method public getNapList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mNapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPxList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mPxList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse([B)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 242
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 243
    const-string v4, "Omacp/OmacpParser"

    const-string v5, "OmacpParserBase mParser is null."

    invoke-static {v4, v5}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 248
    .local v2, in:Ljava/io/InputStream;
    new-instance v3, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;

    invoke-direct {v3, p0, v5}, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;-><init>(Lcom/mediatek/omacp/parser/OmacpParser;Lcom/mediatek/omacp/parser/OmacpParser$1;)V

    .line 250
    .local v3, omacpParserData:Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v4, v4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 258
    :goto_1
    const/4 v1, -0x1

    .line 259
    .local v1, eventType:I
    invoke-direct {p0}, Lcom/mediatek/omacp/parser/OmacpParser;->getEventType()I

    move-result v1

    .line 261
    :goto_2
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 262
    invoke-direct {p0, v3}, Lcom/mediatek/omacp/parser/OmacpParser;->getParserName(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V

    .line 263
    packed-switch v1, :pswitch_data_0

    .line 276
    :pswitch_0
    const-string v4, "Omacp/OmacpParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OmacpParserBase parse eventType error, eventType is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_3
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/omacp/parser/OmacpParser;->getEventType()I

    move-result v1

    goto :goto_2

    .line 252
    .end local v1           #eventType:I
    :cond_2
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    instance-of v4, v4, Lorg/kxml2/wap/WbxmlParser;

    if-eqz v4, :cond_3

    .line 253
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    check-cast v4, Lorg/kxml2/wap/WbxmlParser;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Omacp/OmacpParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OmacpParserBase parse Exception, e is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mApSectionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mPxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v4, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mNapList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v4, "Omacp/OmacpParser"

    const-string v5, "OmacpParserBase unknown parser type."

    invoke-static {v4, v5}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .restart local v1       #eventType:I
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/mediatek/omacp/parser/OmacpParser;->getStartTagData(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V

    goto :goto_3

    .line 272
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/mediatek/omacp/parser/OmacpParser;->getEndTagData(Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setParser(Ljava/lang/Object;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/omacp/parser/OmacpParser;->mParser:Ljava/lang/Object;

    .line 220
    return-void
.end method
