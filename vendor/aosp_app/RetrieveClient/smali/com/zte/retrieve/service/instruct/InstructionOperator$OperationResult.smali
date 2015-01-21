.class public Lcom/zte/retrieve/service/instruct/InstructionOperator$OperationResult;
.super Ljava/lang/Object;
.source "InstructionOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/InstructionOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationResult"
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final PHONE_NUM_NULL:I = 0x2

.field public static final PHONE_NUM_WRONG:I = 0x3

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
