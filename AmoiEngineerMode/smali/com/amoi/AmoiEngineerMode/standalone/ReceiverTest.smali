.class public Lcom/amoi/AmoiEngineerMode/standalone/ReceiverTest;
.super Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;
.source "ReceiverTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ReceiverBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 16
    return-void
.end method
