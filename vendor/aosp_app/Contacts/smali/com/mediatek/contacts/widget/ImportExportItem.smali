.class public Lcom/mediatek/contacts/widget/ImportExportItem;
.super Landroid/widget/LinearLayout;
.source "ImportExportItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountUserName:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/mediatek/contacts/widget/ImportExportItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/widget/ImportExportItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method public bindView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "icon"
    .parameter "text"
    .parameter "path"

    .prologue
    .line 63
    const v1, 0x7f0700f1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mAccountUserName:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f0700f2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    .line 67
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 68
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void

    .line 69
    :cond_0
    if-eqz p3, :cond_2

    .line 70
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, internal:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/contacts/widget/ImportExportItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    .end local v0           #internal:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 2
    .parameter "activated"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 55
    iget-object v0, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/widget/ImportExportItem;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
