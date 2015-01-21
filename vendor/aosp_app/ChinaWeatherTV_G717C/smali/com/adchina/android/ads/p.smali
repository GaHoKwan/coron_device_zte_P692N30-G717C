.class public final enum Lcom/adchina/android/ads/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/adchina/android/ads/p;

.field public static final enum b:Lcom/adchina/android/ads/p;

.field public static final enum c:Lcom/adchina/android/ads/p;

.field private static final synthetic d:[Lcom/adchina/android/ads/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adchina/android/ads/p;

    const-string v1, "EReceiveAd"

    invoke-direct {v0, v1, v2}, Lcom/adchina/android/ads/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    new-instance v0, Lcom/adchina/android/ads/p;

    const-string v1, "ERefreshAd"

    invoke-direct {v0, v1, v3}, Lcom/adchina/android/ads/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    new-instance v0, Lcom/adchina/android/ads/p;

    const-string v1, "EIdle"

    invoke-direct {v0, v1, v4}, Lcom/adchina/android/ads/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adchina/android/ads/p;

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adchina/android/ads/p;->d:[Lcom/adchina/android/ads/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adchina/android/ads/p;
    .locals 1

    const-class v0, Lcom/adchina/android/ads/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/p;

    return-object v0
.end method

.method public static values()[Lcom/adchina/android/ads/p;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adchina/android/ads/p;->d:[Lcom/adchina/android/ads/p;

    array-length v1, v0

    new-array v2, v1, [Lcom/adchina/android/ads/p;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
