.class public Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;
.super Ljava/lang/Object;
.source "DfoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/dfo/DfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfoReadCnf"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public partition:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
