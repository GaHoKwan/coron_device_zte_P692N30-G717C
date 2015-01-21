.class Lcom/zte/engineer/KeyTest$keyAndTextId;
.super Ljava/lang/Object;
.source "KeyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/KeyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "keyAndTextId"
.end annotation


# instance fields
.field public keyCode:I

.field public textId:I

.field final synthetic this$0:Lcom/zte/engineer/KeyTest;


# direct methods
.method public constructor <init>(Lcom/zte/engineer/KeyTest;II)V
    .locals 0
    .parameter
    .parameter "keyCode"
    .parameter "textId"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/zte/engineer/KeyTest$keyAndTextId;->this$0:Lcom/zte/engineer/KeyTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p2, p0, Lcom/zte/engineer/KeyTest$keyAndTextId;->keyCode:I

    .line 264
    iput p3, p0, Lcom/zte/engineer/KeyTest$keyAndTextId;->textId:I

    .line 265
    return-void
.end method
