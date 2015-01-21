.class Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/widget/SimPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mDisplayName:Landroid/widget/TextView;

.field mInternetIcon:Landroid/widget/ImageView;

.field mPhoneNumber:Landroid/widget/TextView;

.field mRadioButton:Landroid/widget/RadioButton;

.field mShortPhoneNumber:Landroid/widget/TextView;

.field mSimIcon:Landroid/view/View;

.field mSimSignal:Landroid/widget/TextView;

.field mSimStatus:Landroid/widget/ImageView;

.field mSuggested:Landroid/widget/ImageView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/contacts/widget/SimPickerAdapter;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/widget/SimPickerAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->this$0:Lcom/mediatek/contacts/widget/SimPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/widget/SimPickerAdapter;Lcom/mediatek/contacts/widget/SimPickerAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/contacts/widget/SimPickerAdapter;)V

    return-void
.end method
