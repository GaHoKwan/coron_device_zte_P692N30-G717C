.class Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
.super Ljava/lang/Object;
.source "SettingVirtualLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingVirtualLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mEffectImage1:Landroid/widget/ImageView;

.field mEffectImage2:Landroid/widget/ImageView;

.field mEffectImage3:Landroid/widget/ImageView;

.field mPref:Lcom/android/camera/ListPreference;

.field mRadio1:Landroid/widget/RadioButton;

.field mRadio2:Landroid/widget/RadioButton;

.field mRadio3:Landroid/widget/RadioButton;

.field mTitle:Landroid/widget/TextView;

.field mTitle1:Landroid/widget/TextView;

.field mTitle2:Landroid/widget/TextView;

.field mTitle3:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/ui/SettingVirtualLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/SettingVirtualLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/SettingVirtualLayout;Lcom/android/camera/ui/SettingVirtualLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;-><init>(Lcom/android/camera/ui/SettingVirtualLayout;)V

    return-void
.end method
