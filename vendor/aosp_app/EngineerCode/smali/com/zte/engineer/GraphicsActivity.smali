.class Lcom/zte/engineer/GraphicsActivity;
.super Lcom/zte/engineer/EmActivity;
.source "GraphicsActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 17
    return-void
.end method
