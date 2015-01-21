.class public Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;
.super Ljava/lang/Object;
.source "EncapsulatedResources.java"


# static fields
.field private static final DEFAULT_THEME_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final STR_COLOR:Ljava/lang/String; = "color"

.field private static final TAG:Ljava/lang/String; = "EncapsulatedResources"

.field private static final THEME_COLOR_PATH:Ljava/lang/String; = "assets/color/colors.xml"

.field private static mMtkColorCache:Ljava/util/HashMap;
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
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;->mMtkColorCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;->mResources:Landroid/content/res/Resources;

    .line 27
    return-void
.end method


# virtual methods
.method public getThemeColor(Ljava/lang/String;)I
    .locals 1
    .parameter "colorName"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemeMainColor()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v0

    return v0
.end method
