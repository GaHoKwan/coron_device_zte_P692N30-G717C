.class public Lcom/mediatek/engineermode/hqanfc/NfcCommand$PollingPhase;
.super Ljava/lang/Object;
.source "NfcCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/NfcCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PollingPhase"
.end annotation


# static fields
.field public static final PHASE_LISTEN:I = 0x0

.field public static final PHASE_PAUSE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
