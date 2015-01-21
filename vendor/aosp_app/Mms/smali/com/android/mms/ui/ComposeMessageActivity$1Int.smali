.class Lcom/android/mms/ui/ComposeMessageActivity$1Int;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->getContactSIM(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Int"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field private value:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 9521
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1Int;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9522
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$1Int;->value:I

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 9527
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$1Int;->value:I

    return v0
.end method

.method public set(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 9524
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1Int;->value:I

    .line 9525
    return-void
.end method
