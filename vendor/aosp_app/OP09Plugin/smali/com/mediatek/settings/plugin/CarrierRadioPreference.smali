.class public Lcom/mediatek/settings/plugin/CarrierRadioPreference;
.super Lcom/mediatek/settings/plugin/RadioPreference;
.source "CarrierRadioPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreference"


# instance fields
.field private mCarrierNumeric:Ljava/lang/String;

.field private mCarrierRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "title"

    const-string v1, "summary"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/settings/plugin/RadioPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/plugin/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/settings/plugin/RadioPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "summary"
    .parameter "isChecked"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/RadioPreference;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCarrierNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->mCarrierNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierRate()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->mCarrierRate:I

    return v0
.end method

.method public setCarrierNumeric(Ljava/lang/String;)V
    .locals 0
    .parameter "numeric"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->mCarrierNumeric:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCarrierRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 50
    iput p1, p0, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->mCarrierRate:I

    .line 51
    return-void
.end method
