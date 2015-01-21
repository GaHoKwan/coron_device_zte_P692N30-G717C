.class public Lcom/mediatek/encapsulation/android/util/EncapsulatedPatterns;
.super Ljava/lang/Object;
.source "EncapsulatedPatterns.java"


# static fields
.field public static final PHONE_PATTERN_MTK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Landroid/util/Patterns;->PHONE_PATTERN_MTK:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/mediatek/encapsulation/android/util/EncapsulatedPatterns;->PHONE_PATTERN_MTK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
