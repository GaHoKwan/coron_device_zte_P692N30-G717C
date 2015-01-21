.class public Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;
.super Ljava/lang/Object;
.source "EncapsulatedListView.java"


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter "listView"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->mListView:Landroid/widget/ListView;

    .line 13
    return-void
.end method


# virtual methods
.method public clearScrapViewsIfNeeded()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 21
    return-void
.end method
