.class public Lcom/android/phasebeam/PhaseBeam;
.super Landroid/app/Activity;
.source "PhaseBeam.java"


# instance fields
.field private mView:Lcom/android/phasebeam/PhaseBeamView;


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
    new-instance v0, Lcom/android/phasebeam/PhaseBeamView;

    invoke-direct {v0, p0}, Lcom/android/phasebeam/PhaseBeamView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeam;->mView:Lcom/android/phasebeam/PhaseBeamView;

    .line 14
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeam;->mView:Lcom/android/phasebeam/PhaseBeamView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 15
    return-void
.end method
