.class public Ltmsdk/bg/tcc/NumMarker$MarkFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/tcc/NumMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkFileInfo"
.end annotation


# instance fields
.field public md5:Ljava/lang/String;

.field public timeStampSecondLastDiff:I

.field public timeStampSecondWhole:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
