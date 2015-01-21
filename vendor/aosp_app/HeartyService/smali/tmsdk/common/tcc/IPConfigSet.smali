.class public Ltmsdk/common/tcc/IPConfigSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public iDefaultIPNums:Ljava/lang/String;

.field public iIPnum:Ljava/lang/String;

.field public iMSelfdefIPNum:Ljava/lang/String;

.field public iMyNumLocation:Ljava/lang/String;

.field public iNotUseIPAreas:Ljava/lang/String;

.field public iNotUseIPNums:Ljava/lang/String;

.field public iSelfdefIPNum:Ljava/lang/String;

.field public iUseIPnumStyle:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "iUseIPnumStyle"
    .parameter "iIPnum"
    .parameter "iMyNumLocation"
    .parameter "iNotUseIPAreas"
    .parameter "iNotUseIPNums"
    .parameter "iDefaultIPNums"
    .parameter "iSelfdefIPNum"
    .parameter "iMSelfdefIPNum"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Ltmsdk/common/tcc/IPConfigSet;->iUseIPnumStyle:I

    .line 32
    iput-object p2, p0, Ltmsdk/common/tcc/IPConfigSet;->iIPnum:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Ltmsdk/common/tcc/IPConfigSet;->iMyNumLocation:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Ltmsdk/common/tcc/IPConfigSet;->iNotUseIPAreas:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Ltmsdk/common/tcc/IPConfigSet;->iNotUseIPNums:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Ltmsdk/common/tcc/IPConfigSet;->iDefaultIPNums:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Ltmsdk/common/tcc/IPConfigSet;->iSelfdefIPNum:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Ltmsdk/common/tcc/IPConfigSet;->iMSelfdefIPNum:Ljava/lang/String;

    .line 40
    return-void
.end method
