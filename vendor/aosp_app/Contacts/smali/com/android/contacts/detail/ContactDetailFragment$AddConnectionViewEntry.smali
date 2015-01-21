.class Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddConnectionViewEntry"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "onClickListener"

    .prologue
    .line 1633
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1634
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1636
    const v0, 0x7f0c0267

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mLabel:Ljava/lang/CharSequence;

    .line 1637
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 1639
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1627
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 1
    .parameter "clickedView"
    .parameter "fragmentListener"

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 1645
    :goto_0
    return-void

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
