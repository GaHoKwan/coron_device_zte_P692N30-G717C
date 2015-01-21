.class Lcom/zte/zdm/omacp/d/a/e;
.super Lorg/kxml2/wap/WbxmlParser;


# static fields
.field private static final a:[[Ljava/lang/String;

.field private static final b:[[Ljava/lang/String;

.field private static final c:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "wap-provisioningdoc"

    aput-object v2, v1, v5

    const-string v2, "characteristic"

    aput-object v2, v1, v6

    const-string v2, "parm"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    aput-object v4, v1, v5

    const-string v2, "characteristic"

    aput-object v2, v1, v6

    const-string v2, "parm"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/zdm/omacp/d/a/e;->a:[[Ljava/lang/String;

    new-array v0, v7, [[Ljava/lang/String;

    const/16 v1, 0x57

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v1, v5

    const-string v2, "value"

    aput-object v2, v1, v6

    const-string v2, "name=NAME"

    aput-object v2, v1, v7

    const-string v2, "name=NAP-ADDRESS"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "name=NAP-ADDRTYPE"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "name=CALLTYPE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "name=VALIDUNTIL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "name=AUTHTYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name=AUTHNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "name=AUTHSECRET"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "name=LINGER"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "name=BEARER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "name=NAPID"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "name=COUNTRY"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "name=NETWORK"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "name=INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "name=PROXY-ID"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "name=PROXY-PROVIDER-ID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "name=DOMAIN"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "name=PROVURL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "name=PXAUTH-TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "name=PXAUTH-ID"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "name=PXAUTH-PW"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "name=STARTPAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "name=BASAUTH-ID"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "name=BASAUTH-PW"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "name=PUSHENABLED"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "name=PXADDR"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "name=PXADDRTYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "name=TO-NAPID"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "name=PORTNBR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "name=SERVICE"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "name=LINKSPEED"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "name=DNLINKSPEED"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "name=LOCAL-ADDR"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "name=LOCAL-ADDRTYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "name=CONTEXT-ALLOW"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "name=TRUST"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "name=MASTER"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "name=SID"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "name=SOC"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "name=WSP-VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "name=PHYSICAL-PROXY-ID"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "name=CLIENT-ID"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "name=DELIVERY-ERR-SDU"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "name=DELIVERY-ORDER"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "name=TRAFFIC-CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "name=MAX-SDU-SIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "name=MAX-BITRATE-UPLINK"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "name=MAX-BITRATE-DNLINK"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "name=RESIDUAL-BER"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "name=SDU-ERROR-RATIO"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "name=TRAFFIC-HANDL-PRIO"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "name=TRANSFER-DELAY"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "name=GUARANTEED-BITRATE-UPLINK"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "name=GUARANTEED-BITRATE-DNLINK"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "name=PXADDR-FQDN"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "name=PROXY-PW"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "name=PPGAUTH-TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-string v3, "version"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "version=1.0"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "name=PULLENABLED"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "name=DNS-ADDR"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "name=MAX-NUM-RETRY"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "name=FIRST-RETRY-TIMEOUT"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "name=REREG-THRESHOLD"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "name=T-BIT"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    aput-object v4, v1, v2

    const/16 v2, 0x49

    const-string v3, "name=AUTH-ENTITY"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "name=SPI"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "type=PXLOGICAL"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "type=PXPHYSICAL"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "type=PORT"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "type=VALIDITY"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "type=NAPDEF"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "type=BOOTSTRAP"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "type=VENDORCONFIG"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "type=CLIENTIDENTITY"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "type=PXAUTHINFO"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "type=NAPAUTHINFO"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "type=ACCESS"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x55

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v1, v5

    const-string v2, "value"

    aput-object v2, v1, v6

    const-string v2, "name=NAME"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v3, "name=INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v3, "name=STARTPAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v3, "name=TO-NAPID"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "name=PORTNBR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "name=SERVICE"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v3, "name=AACCEPT"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "name=AAUTHDATA"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "name=AAUTHLEVEL"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "name=AAUTHNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "name=AAUTHSECRET"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "name=AAUTHTYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "name=ADDR"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "name=ADDRTYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "name=APPID"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "name=APROTOCOL"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "name=PROVIDER-ID"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "name=TO-PROXY"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "name=URI"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "name=RULE"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    aput-object v4, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    aput-object v4, v1, v2

    const/16 v2, 0x48

    aput-object v4, v1, v2

    const/16 v2, 0x49

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    aput-object v4, v1, v2

    const/16 v2, 0x4d

    aput-object v4, v1, v2

    const/16 v2, 0x4e

    const-string v3, "type=PORT"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    aput-object v4, v1, v2

    const/16 v2, 0x50

    const-string v3, "type=APPLICATION"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "type=APPADDR"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "type=APPAUTH"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "type=CLIENTIDENTITY"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "type=RESOURCE"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/zdm/omacp/d/a/e;->b:[[Ljava/lang/String;

    new-array v0, v7, [[Ljava/lang/String;

    const/16 v1, 0x5d

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "IPV4"

    aput-object v2, v1, v5

    const-string v2, "IPV6"

    aput-object v2, v1, v6

    const-string v2, "E164"

    aput-object v2, v1, v7

    const-string v2, "ALPHA"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "APN"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "SCODE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TETRA-ITSI"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "MAN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v3, "ANALOG-MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "V.120"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "V.110"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "X.31"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "BIT-TRANSPARENT"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "DIRECT-ASYNCHRONOUS-DATA-SERVICE"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string v3, "PAP"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CHAP"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "HTTP-BASIC"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "HTTP-DIGEST"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "WTLS-SS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "MD5"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v3, "GSM-USSD"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "GSM-SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "ANSI-136-GUTS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "IS-95-CDMA-SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "IS-95-CDMA-CSD"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "IS-95-CDMA-PACKET"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "ANSI-136-CSD"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "ANSI-136-GPRS"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "GSM-CSD"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "GSM-GPRS"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "AMPS-CDPD"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "PDC-CSD"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "PDC-PACKET"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "IDEN-SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "IDEN-CSD"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "IDEN-PACKET"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "FLEX/REFLEX"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "PHS-SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "PHS-CSD"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "TETRA-SDS"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "TETRA-PACKET"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "ANSI-136-GHOST"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "MOBITEX-MPAK"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "CDMA2000-1X-SIMPLE-IP"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "CDMA2000-1X-MOBILE-IP"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-string v3, "AUTOBAUDING"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-string v3, "CL-WSP"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "CO-WSP"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "CL-SEC-WSP"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "CO-SEC-WSP"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "CL-SEC-WTA"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "CO-SEC-WTA"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "OTA-HTTP-TO"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "OTA-HTTP-TLS-TO"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "OTA-HTTP-PO"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "OTA-HTTP-TLS-PO"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    aput-object v4, v1, v2

    const/16 v2, 0x50

    aput-object v4, v1, v2

    const/16 v2, 0x51

    aput-object v4, v1, v2

    const/16 v2, 0x52

    aput-object v4, v1, v2

    const/16 v2, 0x53

    aput-object v4, v1, v2

    const/16 v2, 0x54

    aput-object v4, v1, v2

    const/16 v2, 0x55

    aput-object v4, v1, v2

    const/16 v2, 0x56

    aput-object v4, v1, v2

    const/16 v2, 0x57

    aput-object v4, v1, v2

    const/16 v2, 0x58

    aput-object v4, v1, v2

    const/16 v2, 0x59

    aput-object v4, v1, v2

    const/16 v2, 0x5a

    aput-object v4, v1, v2

    const/16 v2, 0x5b

    const-string v3, "AAA"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "HA"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ","

    aput-object v2, v1, v5

    const-string v2, "HTTP-"

    aput-object v2, v1, v6

    const-string v2, "BASIC"

    aput-object v2, v1, v7

    const-string v2, "DIGEST"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "IPV6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "E164"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ALPHA"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "APPSRV"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "OBEX"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/zdm/omacp/d/a/e;->c:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    sget-object v0, Lcom/zte/zdm/omacp/d/a/e;->a:[[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/zte/zdm/omacp/d/a/e;->setTagTable(I[Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/omacp/d/a/e;->a:[[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/zte/zdm/omacp/d/a/e;->setTagTable(I[Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/omacp/d/a/e;->b:[[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/zte/zdm/omacp/d/a/e;->setAttrStartTable(I[Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/omacp/d/a/e;->b:[[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/zte/zdm/omacp/d/a/e;->setAttrStartTable(I[Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/omacp/d/a/e;->c:[[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/zte/zdm/omacp/d/a/e;->setAttrValueTable(I[Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/omacp/d/a/e;->c:[[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/zte/zdm/omacp/d/a/e;->setAttrValueTable(I[Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Lcom/zte/zdm/omacp/d/a/e;

    invoke-direct {v1}, Lcom/zte/zdm/omacp/d/a/e;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    const-string v0, "res/receive_OTA_MMS_001_no_pin.wbxml"

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v0, "res/out.xml"

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->next()I

    :goto_0
    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->next()I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v6}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v6}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->getAttributeCount()I

    move-result v4

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/kxml2/wap/WbxmlParser;->next()I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
