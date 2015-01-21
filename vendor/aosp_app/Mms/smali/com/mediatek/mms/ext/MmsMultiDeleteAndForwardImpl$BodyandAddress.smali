.class Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;
.super Ljava/lang/Object;
.source "MmsMultiDeleteAndForwardImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BodyandAddress"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mBody:Ljava/lang/String;

.field mBoxType:I

.field final synthetic this$0:Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "mAddress"
    .parameter "mBody"
    .parameter "boxType"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;->this$0:Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;->mAddress:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;->mBody:Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;->mBoxType:I

    .line 70
    return-void
.end method
