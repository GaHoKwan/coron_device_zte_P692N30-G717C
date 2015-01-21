.class Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;
.super Ljava/lang/Object;
.source "SettingSublistLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingSublistLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mRadioButton:Landroid/widget/RadioButton;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/ui/SettingSublistLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/SettingSublistLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/SettingSublistLayout;Lcom/android/camera/ui/SettingSublistLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;-><init>(Lcom/android/camera/ui/SettingSublistLayout;)V

    return-void
.end method
