.class public Lcom/android/galaxy4/Galaxy4;
.super Landroid/app/Activity;
.source "Galaxy4.java"


# instance fields
.field private mView:Lcom/android/galaxy4/GalaxyView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lcom/android/galaxy4/GalaxyView;

    invoke-direct {v0, p0}, Lcom/android/galaxy4/GalaxyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/galaxy4/Galaxy4;->mView:Lcom/android/galaxy4/GalaxyView;

    .line 14
    iget-object v0, p0, Lcom/android/galaxy4/Galaxy4;->mView:Lcom/android/galaxy4/GalaxyView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 15
    return-void
.end method
