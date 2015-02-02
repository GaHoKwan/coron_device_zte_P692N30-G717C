.class public Lcom/amoi/AmoiEngineerMode/standalone/SimStatusTest;
.super Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;
.source "SimStatusTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 9
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 10
    return-void
.end method
