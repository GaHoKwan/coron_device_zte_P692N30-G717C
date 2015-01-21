.class Lcom/zte/engineer/KeyTest$keyTestManager;
.super Ljava/lang/Object;
.source "KeyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/KeyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "keyTestManager"
.end annotation


# instance fields
.field private managerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/engineer/KeyTest$keyAndTextId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/engineer/KeyTest;


# direct methods
.method public constructor <init>(Lcom/zte/engineer/KeyTest;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/engineer/KeyTest$keyAndTextId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/engineer/KeyTest$keyAndTextId;>;"
    iput-object p1, p0, Lcom/zte/engineer/KeyTest$keyTestManager;->this$0:Lcom/zte/engineer/KeyTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/zte/engineer/KeyTest$keyTestManager;->managerArray:Ljava/util/ArrayList;

    .line 275
    return-void
.end method


# virtual methods
.method public getRemainnings()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zte/engineer/KeyTest$keyTestManager;->managerArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/zte/engineer/KeyTest$keyTestManager;->getRemainnings()I

    move-result v1

    .line 286
    .local v1, size:I
    if-gtz v1, :cond_0

    .line 288
    const-string v2, "KeyTest"

    const-string v3, "keyTestManager remove->size error"

    invoke-static {v2, v3}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 294
    iget-object v2, p0, Lcom/zte/engineer/KeyTest$keyTestManager;->managerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/engineer/KeyTest$keyAndTextId;

    iget v2, v2, Lcom/zte/engineer/KeyTest$keyAndTextId;->keyCode:I

    if-ne v2, p1, :cond_1

    .line 296
    iget-object v2, p0, Lcom/zte/engineer/KeyTest$keyTestManager;->managerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    const-string v2, "KeyTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted suceed.remain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/engineer/KeyTest$keyTestManager;->getRemainnings()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_2
    const-string v2, "KeyTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/engineer/KeyTest$keyTestManager;->getRemainnings()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
