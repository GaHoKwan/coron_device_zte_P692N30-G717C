.class public Lcom/zte/heartservice/HeartServiceZTEActivity;
.super Landroid/app/Activity;
.source "HeartServiceZTEActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/zte/heartservice/HeartServiceZTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 21
    .local v0, bv:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v2, "#FFFDDD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/zte/heartservice/HeartServiceZTEActivity;->setContentView(I)V

    .line 28
    return-void
.end method
