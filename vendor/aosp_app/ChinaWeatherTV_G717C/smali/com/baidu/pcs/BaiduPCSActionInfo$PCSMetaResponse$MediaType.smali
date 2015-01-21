.class public final enum Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
.super Ljava/lang/Enum;
.source "BaiduPCSActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

.field public static final enum Media_Audio:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

.field public static final enum Media_Image:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

.field public static final enum Media_Unknown:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

.field public static final enum Media_Video:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    const-string v1, "Media_Unknown"

    invoke-direct {v0, v1, v2}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Unknown:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    .line 103
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    const-string v1, "Media_Audio"

    invoke-direct {v0, v1, v3}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;-><init>(Ljava/lang/String;I)V

    .line 104
    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Audio:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    .line 106
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    const-string v1, "Media_Video"

    invoke-direct {v0, v1, v4}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;-><init>(Ljava/lang/String;I)V

    .line 107
    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Video:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    .line 109
    new-instance v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    const-string v1, "Media_Image"

    invoke-direct {v0, v1, v5}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Image:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Unknown:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Audio:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Video:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->Media_Image:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ENUM$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;->ENUM$VALUES:[Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse$MediaType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
