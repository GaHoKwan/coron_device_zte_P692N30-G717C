.class public final enum Lcom/adchina/android/ads/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/adchina/android/ads/l;

.field public static final enum b:Lcom/adchina/android/ads/l;

.field public static final enum c:Lcom/adchina/android/ads/l;

.field public static final enum d:Lcom/adchina/android/ads/l;

.field public static final enum e:Lcom/adchina/android/ads/l;

.field public static final enum f:Lcom/adchina/android/ads/l;

.field public static final enum g:Lcom/adchina/android/ads/l;

.field private static final synthetic h:[Lcom/adchina/android/ads/l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/adchina/android/ads/l;

    const-string v1, "EAdTXT"

    invoke-direct {v0, v1, v3}, Lcom/adchina/android/ads/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/l;->a:Lcom/adchina/android/ads/l;

    new-instance v0, Lcom/adchina/android/ads/l;

    const-string v1, "EAdJPG"

    invoke-direct {v0, v1, v4}, Lcom/adchina/android/ads/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    new-instance v0, Lcom/adchina/android/ads/l;

    const-string v1, "EAdPNG"

    invoke-direct {v0, v1, v5}, Lcom/adchina/android/ads/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    new-instance v0, Lcom/adchina/android/ads/l;

    const-string v1, "EAdGIF"

    invoke-direct {v0, v1, v6}, Lcom/adchina/android/ads/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    new-instance v0, Lcom/adchina/android/ads/l;

    const-string v1, "EAdNONE"

    invoke-direct {v0, v1, v7}, Lcom/adchina/android/ads/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/l;->e:Lcom/adchina/android/ads/l;

    new-instance v0, Lcom/adchina/android/ads/l;

    const-string v1, "EAdHTML5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adchina/android/ads/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    new-instance v0, Lcom/adchina/android/ads/l;

    const-string v1, "EAdIHTML5"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adchina/android/ads/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/adchina/android/ads/l;

    sget-object v1, Lcom/adchina/android/ads/l;->a:Lcom/adchina/android/ads/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adchina/android/ads/l;->e:Lcom/adchina/android/ads/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adchina/android/ads/l;->h:[Lcom/adchina/android/ads/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adchina/android/ads/l;
    .locals 1

    const-class v0, Lcom/adchina/android/ads/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/l;

    return-object v0
.end method

.method public static values()[Lcom/adchina/android/ads/l;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adchina/android/ads/l;->h:[Lcom/adchina/android/ads/l;

    array-length v1, v0

    new-array v2, v1, [Lcom/adchina/android/ads/l;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
