.class public Lcom/zte/zdm/b/g/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/security/SecureRandom;

.field private static b:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/b/g/f;->a:Ljava/security/SecureRandom;

    sput-object v0, Lcom/zte/zdm/b/g/f;->b:Ljava/security/MessageDigest;

    :try_start_0
    invoke-static {}, Lcom/zte/zdm/b/g/f;->b()V

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/b/g/f;->b:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[B
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [B

    sget-object v0, Lcom/zte/zdm/b/g/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x80

    if-le v2, v3, :cond_1

    :cond_0
    rem-int/lit8 v2, v2, 0x40

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static a([B)[B
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/g/f;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    sget-object v0, Lcom/zte/zdm/b/g/f;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b()V
    .locals 1

    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/b/g/f;->a:Ljava/security/SecureRandom;

    return-void
.end method
