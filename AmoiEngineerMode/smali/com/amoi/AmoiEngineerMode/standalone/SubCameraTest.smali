.class public Lcom/amoi/AmoiEngineerMode/standalone/SubCameraTest;
.super Lcom/amoi/AmoiEngineerMode/base/SubCameraBase;
.source "SubCameraTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SubCameraBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 10
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 11
    return-void
.end method
