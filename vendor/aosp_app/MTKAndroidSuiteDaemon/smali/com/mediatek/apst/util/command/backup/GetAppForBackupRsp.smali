.class public Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "GetAppForBackupRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 61
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 62
    return-void
.end method

.method public static bridge synthetic builder(I)Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p0}, Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp;->builder(I)Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(I)Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;
    .locals 1
    .parameter "rawBlockSize"

    .prologue
    .line 91
    new-instance v0, Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/util/command/backup/GetAppForBackupRsp$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getResults()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/app/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/mediatek/apst/util/command/RawBlockResponse;->getRaw()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 81
    .local v1, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/app/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 87
    return-object v4

    .line 83
    :cond_0
    new-instance v3, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;-><init>()V

    .line 84
    .local v3, item:Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
    invoke-virtual {v3, v0}, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 85
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
