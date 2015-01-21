.class public Lcom/itextpdf/text/pdf/security/KeyStoreUtil;
.super Ljava/lang/Object;
.source "KeyStoreUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCacertsKeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/security/KeyStoreUtil;->loadCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static loadCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 8
    .parameter "provider"

    .prologue
    .line 63
    new-instance v1, Ljava/io/File;

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lib"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "security"

    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v6, "cacerts"

    invoke-direct {v1, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    const/4 v3, 0x0

    .line 68
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    if-nez p0, :cond_1

    .line 71
    :try_start_1
    const-string v6, "JKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 74
    .local v5, k:Ljava/security/KeyStore;
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 81
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-object v5

    .line 73
    .end local v5           #k:Ljava/security/KeyStore;
    :cond_1
    :try_start_3
    const-string v6, "JKS"

    invoke-static {v6, p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .restart local v5       #k:Ljava/security/KeyStore;
    goto :goto_0

    .line 77
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #k:Ljava/security/KeyStore;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v6

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #k:Ljava/security/KeyStore;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #k:Ljava/security/KeyStore;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_4

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 77
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method
