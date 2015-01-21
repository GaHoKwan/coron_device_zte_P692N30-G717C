.class public Lho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/sogou/theme/ThemeListView;


# direct methods
.method public constructor <init>(Lcom/sogou/theme/ThemeListView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lho;->a:Lcom/sogou/theme/ThemeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lho;->a:Lcom/sogou/theme/ThemeListView;

    iget-object v1, p0, Lho;->a:Lcom/sogou/theme/ThemeListView;

    invoke-static {v1}, Lcom/sogou/theme/ThemeListView;->a(Lcom/sogou/theme/ThemeListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sogou/theme/ThemeListView;->a(Lcom/sogou/theme/ThemeListView;I)I

    .line 111
    iget-object v0, p0, Lho;->a:Lcom/sogou/theme/ThemeListView;

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    return-void
.end method
