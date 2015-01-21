.class public Lcom/mediatek/vlw/AddAdapter$ListItem;
.super Ljava/lang/Object;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/AddAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field final mActionTag:I

.field private final mImage:Landroid/graphics/drawable/Drawable;

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 1
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mText:Ljava/lang/CharSequence;

    .line 69
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 70
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 74
    :goto_0
    iput p4, p0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mActionTag:I

    .line 75
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/vlw/AddAdapter$ListItem;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/vlw/AddAdapter$ListItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/vlw/AddAdapter$ListItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
