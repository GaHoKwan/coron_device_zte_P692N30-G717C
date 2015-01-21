.class public final Lcom/itextpdf/text/pdf/crypto/IVGenerator;
.super Ljava/lang/Object;
.source "IVGenerator.java"


# static fields
.field private static arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 55
    new-instance v5, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;-><init>()V

    sput-object v5, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 57
    .local v3, time:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 58
    .local v0, mem:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, s:Ljava/lang/String;
    sget-object v5, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static getIV()[B
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getIV(I)[B
    .locals 3
    .parameter "len"

    .prologue
    .line 80
    new-array v0, p0, [B

    .line 81
    .local v0, b:[B
    sget-object v2, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    monitor-enter v2

    .line 82
    :try_start_0
    sget-object v1, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([B)V

    .line 83
    monitor-exit v2

    .line 84
    return-object v0

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
