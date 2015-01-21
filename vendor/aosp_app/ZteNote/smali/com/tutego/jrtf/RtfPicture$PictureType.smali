.class public enum Lcom/tutego/jrtf/RtfPicture$PictureType;
.super Ljava/lang/Enum;
.source "RtfPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "PictureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfPicture$PictureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTOMATIC:Lcom/tutego/jrtf/RtfPicture$PictureType;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfPicture$PictureType;

.field public static final enum JPG:Lcom/tutego/jrtf/RtfPicture$PictureType;

.field public static final enum PNG:Lcom/tutego/jrtf/RtfPicture$PictureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/tutego/jrtf/RtfPicture$PictureType;

    const-string v1, "AUTOMATIC"

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfPicture$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfPicture$PictureType;->AUTOMATIC:Lcom/tutego/jrtf/RtfPicture$PictureType;

    .line 48
    new-instance v0, Lcom/tutego/jrtf/RtfPicture$PictureType$1;

    const-string v1, "JPG"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfPicture$PictureType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfPicture$PictureType;->JPG:Lcom/tutego/jrtf/RtfPicture$PictureType;

    .line 51
    new-instance v0, Lcom/tutego/jrtf/RtfPicture$PictureType$2;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfPicture$PictureType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfPicture$PictureType;->PNG:Lcom/tutego/jrtf/RtfPicture$PictureType;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tutego/jrtf/RtfPicture$PictureType;

    sget-object v1, Lcom/tutego/jrtf/RtfPicture$PictureType;->AUTOMATIC:Lcom/tutego/jrtf/RtfPicture$PictureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutego/jrtf/RtfPicture$PictureType;->JPG:Lcom/tutego/jrtf/RtfPicture$PictureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfPicture$PictureType;->PNG:Lcom/tutego/jrtf/RtfPicture$PictureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tutego/jrtf/RtfPicture$PictureType;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfPicture$PictureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfPicture$PictureType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfPicture$PictureType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfPicture$PictureType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfPicture$PictureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfPicture$PictureType;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfPicture$PictureType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfPicture$PictureType;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfPicture$PictureType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfPicture$PictureType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
