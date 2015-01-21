.class public Lcom/android/contacts/format/FormatUtils$OffsetValues;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/format/FormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffsetValues"
.end annotation


# instance fields
.field public mOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput p1, p0, Lcom/android/contacts/format/FormatUtils$OffsetValues;->mOffset:I

    .line 361
    return-void
.end method
