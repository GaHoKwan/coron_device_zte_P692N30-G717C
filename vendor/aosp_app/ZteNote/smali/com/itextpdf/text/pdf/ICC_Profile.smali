.class public Lcom/itextpdf/text/pdf/ICC_Profile;
.super Ljava/lang/Object;
.source "ICC_Profile.java"


# static fields
.field private static cstags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected data:[B

.field protected numComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    .line 137
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "XYZ "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "Lab "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "Luv "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "YCbr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "Yxy "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "RGB "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "GRAY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "HSV "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "HLS "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "CMYK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "CMY "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "2CLR"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "3CLR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "4CLR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "5CLR"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "6CLR"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "7CLR"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "8CLR"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "9CLR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "ACLR"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "BCLR"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "CCLR"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "DCLR"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "ECLR"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    const-string v1, "FCLR"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static GetInstance(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ICC_Profile;
    .locals 6
    .parameter "fname"

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, fs:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #fs:Ljava/io/FileInputStream;
    .local v2, fs:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance(Ljava/io/InputStream;)Lcom/itextpdf/text/pdf/ICC_Profile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 124
    .local v3, icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v3

    .line 120
    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v3           #icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v4

    .end local v1           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    .restart local v3       #icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v3           #icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v1           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fs:Ljava/io/FileInputStream;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    goto :goto_2

    .line 120
    .end local v1           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fs:Ljava/io/FileInputStream;
    .restart local v1       #fs:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getInstance(Ljava/io/InputStream;)Lcom/itextpdf/text/pdf/ICC_Profile;
    .locals 9
    .parameter "file"

    .prologue
    .line 80
    const/16 v6, 0x80

    :try_start_0
    new-array v1, v6, [B

    .line 81
    .local v1, head:[B
    array-length v5, v1

    .line 82
    .local v5, remain:I
    const/4 v4, 0x0

    .line 83
    .local v4, ptr:I
    :goto_0
    if-lez v5, :cond_1

    .line 84
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 85
    .local v3, n:I
    if-gez v3, :cond_0

    .line 86
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid.icc.profile"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1           #head:[B
    .end local v3           #n:I
    .end local v4           #ptr:I
    .end local v5           #remain:I
    :catch_0
    move-exception v0

    .line 109
    .local v0, ex:Ljava/lang/Exception;
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 87
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #head:[B
    .restart local v3       #n:I
    .restart local v4       #ptr:I
    .restart local v5       #remain:I
    :cond_0
    sub-int/2addr v5, v3

    .line 88
    add-int/2addr v4, v3

    .line 89
    goto :goto_0

    .line 90
    .end local v3           #n:I
    :cond_1
    const/16 v6, 0x24

    :try_start_1
    aget-byte v6, v1, v6

    const/16 v7, 0x61

    if-ne v6, v7, :cond_2

    const/16 v6, 0x25

    aget-byte v6, v1, v6

    const/16 v7, 0x63

    if-ne v6, v7, :cond_2

    const/16 v6, 0x26

    aget-byte v6, v1, v6

    const/16 v7, 0x73

    if-ne v6, v7, :cond_2

    const/16 v6, 0x27

    aget-byte v6, v1, v6

    const/16 v7, 0x70

    if-eq v6, v7, :cond_3

    .line 92
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid.icc.profile"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    :cond_3
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v5, v6, v7

    .line 95
    new-array v2, v5, [B

    .line 96
    .local v2, icc:[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length v6, v1

    sub-int/2addr v5, v6

    .line 98
    array-length v4, v1

    .line 99
    :goto_1
    if-lez v5, :cond_5

    .line 100
    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 101
    .restart local v3       #n:I
    if-gez v3, :cond_4

    .line 102
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid.icc.profile"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    :cond_4
    sub-int/2addr v5, v3

    .line 104
    add-int/2addr v4, v3

    .line 105
    goto :goto_1

    .line 106
    .end local v3           #n:I
    :cond_5
    invoke-static {v2}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method public static getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;
    .locals 9
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 63
    array-length v4, p0

    const/16 v5, 0x80

    if-lt v4, v5, :cond_0

    const/16 v4, 0x24

    aget-byte v4, p0, v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_0

    const/16 v4, 0x25

    aget-byte v4, p0, v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_0

    const/16 v4, 0x26

    aget-byte v4, p0, v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_0

    const/16 v4, 0x27

    aget-byte v4, p0, v4

    const/16 v5, 0x70

    if-eq v4, v5, :cond_1

    .line 65
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid.icc.profile"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_1
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/ICC_Profile;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/ICC_Profile;-><init>()V

    .line 68
    .local v2, icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    iput-object p0, v2, Lcom/itextpdf/text/pdf/ICC_Profile;->data:[B

    .line 70
    sget-object v4, Lcom/itextpdf/text/pdf/ICC_Profile;->cstags:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/String;

    const/16 v6, 0x10

    const/4 v7, 0x4

    const-string v8, "US-ASCII"

    invoke-direct {v5, p0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 71
    .local v0, cs:Ljava/lang/Integer;
    if-nez v0, :cond_2

    :goto_0
    iput v3, v2, Lcom/itextpdf/text/pdf/ICC_Profile;->numComponents:I

    .line 72
    return-object v2

    .line 71
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 73
    .end local v0           #cs:Ljava/lang/Integer;
    .end local v2           #icc:Lcom/itextpdf/text/pdf/ICC_Profile;
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ICC_Profile;->data:[B

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/itextpdf/text/pdf/ICC_Profile;->numComponents:I

    return v0
.end method
