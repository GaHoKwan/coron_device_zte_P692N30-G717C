.class public final enum Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
.super Ljava/lang/Enum;
.source "PackageInstallStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_ALREADY_EXISTS:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_CONFLICTING_PROVIDER:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_CONTAINER_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_DEXOPT:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_DUPLICATE_PACKAGE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_INSUFFICIENT_STORAGE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_INTERNAL_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_INVALID_APK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_INVALID_INSTALL_LOCATION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_INVALID_URI:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_MEDIA_UNAVAILABLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_MISSING_FEATURE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_MISSING_SHARED_LIBRARY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_NEWER_SDK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_NO_SHARED_USER:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_OLDER_SDK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_PACKAGE_CHANGED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_REPLACE_COULDNT_DELETE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_TEST_ONLY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_UPDATE_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_VERIFICATION_FAILURE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_FAILED_VERIFICATION_TIMEOUT:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_BAD_MANIFEST:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_MANIFEST_EMPTY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_NOT_APK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_NO_CERTIFICATES:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum INSTALL_SUCCEEDED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum NO_PERMISSION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

.field public static final enum UNKOWN_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_SUCCEEDED"

    invoke-direct {v0, v1, v4, v5}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_SUCCEEDED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 9
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_ALREADY_EXISTS"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_ALREADY_EXISTS:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 10
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_INVALID_APK"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INVALID_APK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 11
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_INVALID_URI"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INVALID_URI:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 12
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INSUFFICIENT_STORAGE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 13
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_DUPLICATE_PACKAGE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 14
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_NO_SHARED_USER"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_NO_SHARED_USER:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 15
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_UPDATE_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 16
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    const/16 v2, 0x8

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 17
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    const/16 v2, 0x9

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_MISSING_SHARED_LIBRARY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 18
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    const/16 v2, 0xa

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_REPLACE_COULDNT_DELETE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 19
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_DEXOPT"

    const/16 v2, 0xb

    const/16 v3, -0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_DEXOPT:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 20
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_OLDER_SDK"

    const/16 v2, 0xc

    const/16 v3, -0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_OLDER_SDK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 21
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    const/16 v2, 0xd

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_CONFLICTING_PROVIDER:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 22
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_NEWER_SDK"

    const/16 v2, 0xe

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_NEWER_SDK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 23
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_TEST_ONLY"

    const/16 v2, 0xf

    const/16 v3, -0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_TEST_ONLY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 24
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    const/16 v2, 0x10

    const/16 v3, -0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 25
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_MISSING_FEATURE"

    const/16 v2, 0x11

    const/16 v3, -0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_MISSING_FEATURE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 26
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_CONTAINER_ERROR"

    const/16 v2, 0x12

    const/16 v3, -0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_CONTAINER_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 27
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    const/16 v2, 0x13

    const/16 v3, -0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INVALID_INSTALL_LOCATION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 28
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    const/16 v2, 0x14

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_MEDIA_UNAVAILABLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 29
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    const/16 v2, 0x15

    const/16 v3, -0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_VERIFICATION_TIMEOUT:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 30
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_VERIFICATION_FAILURE"

    const/16 v2, 0x16

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_VERIFICATION_FAILURE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 31
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_PACKAGE_CHANGED"

    const/16 v2, 0x17

    const/16 v3, -0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_PACKAGE_CHANGED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 32
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_NOT_APK"

    const/16 v2, 0x18

    const/16 v3, -0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_NOT_APK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 33
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    const/16 v2, 0x19

    const/16 v3, -0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_BAD_MANIFEST:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 34
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    const/16 v2, 0x1a

    const/16 v3, -0x66

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 35
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    const/16 v2, 0x1b

    const/16 v3, -0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_NO_CERTIFICATES:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 36
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    const/16 v2, 0x1c

    const/16 v3, -0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 37
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    const/16 v2, 0x1d

    const/16 v3, -0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 38
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    const/16 v2, 0x1e

    const/16 v3, -0x6a

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 39
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    const/16 v2, 0x1f

    const/16 v3, -0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 40
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    const/16 v2, 0x20

    const/16 v3, -0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 41
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    const/16 v2, 0x21

    const/16 v3, -0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_MANIFEST_EMPTY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 42
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "INSTALL_FAILED_INTERNAL_ERROR"

    const/16 v2, 0x22

    const/16 v3, -0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INTERNAL_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 43
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "NO_PERMISSION"

    const/16 v2, 0x23

    const/16 v3, -0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->NO_PERMISSION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 44
    new-instance v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    const-string v1, "UNKOWN_ERROR"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2, v4}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->UNKOWN_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 6
    const/16 v0, 0x25

    new-array v0, v0, [Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    sget-object v1, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_SUCCEEDED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_ALREADY_EXISTS:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INVALID_APK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INVALID_URI:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INSUFFICIENT_STORAGE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_DUPLICATE_PACKAGE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_NO_SHARED_USER:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_UPDATE_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_MISSING_SHARED_LIBRARY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_REPLACE_COULDNT_DELETE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_DEXOPT:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_OLDER_SDK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_CONFLICTING_PROVIDER:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_NEWER_SDK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_TEST_ONLY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_MISSING_FEATURE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_CONTAINER_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INVALID_INSTALL_LOCATION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_MEDIA_UNAVAILABLE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_VERIFICATION_TIMEOUT:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_VERIFICATION_FAILURE:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_PACKAGE_CHANGED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_NOT_APK:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_BAD_MANIFEST:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_NO_CERTIFICATES:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_PARSE_FAILED_MANIFEST_EMPTY:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->INSTALL_FAILED_INTERNAL_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->NO_PERMISSION:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->UNKOWN_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->$VALUES:[Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->code:I

    .line 51
    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    .locals 4
    .parameter "name"

    .prologue
    .line 59
    sget-object v1, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->UNKOWN_ERROR:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    .line 61
    .local v1, status:Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :try_start_0
    invoke-static {p0}, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const-string v2, "PackageInstallStatus"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/util/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    return-object v0
.end method

.method public static values()[Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->$VALUES:[Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    invoke-virtual {v0}, [Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;->code:I

    return v0
.end method
