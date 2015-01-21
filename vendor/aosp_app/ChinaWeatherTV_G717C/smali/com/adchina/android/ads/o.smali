.class public final enum Lcom/adchina/android/ads/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/adchina/android/ads/o;

.field public static final enum b:Lcom/adchina/android/ads/o;

.field private static final synthetic c:[Lcom/adchina/android/ads/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adchina/android/ads/o;

    const-string v1, "EFemale"

    invoke-direct {v0, v1, v2}, Lcom/adchina/android/ads/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/o;->a:Lcom/adchina/android/ads/o;

    new-instance v0, Lcom/adchina/android/ads/o;

    const-string v1, "EMale"

    invoke-direct {v0, v1, v3}, Lcom/adchina/android/ads/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adchina/android/ads/o;->b:Lcom/adchina/android/ads/o;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adchina/android/ads/o;

    sget-object v1, Lcom/adchina/android/ads/o;->a:Lcom/adchina/android/ads/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adchina/android/ads/o;->b:Lcom/adchina/android/ads/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adchina/android/ads/o;->c:[Lcom/adchina/android/ads/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adchina/android/ads/o;
    .locals 1

    const-class v0, Lcom/adchina/android/ads/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/o;

    return-object v0
.end method

.method public static values()[Lcom/adchina/android/ads/o;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adchina/android/ads/o;->c:[Lcom/adchina/android/ads/o;

    array-length v1, v0

    new-array v2, v1, [Lcom/adchina/android/ads/o;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
