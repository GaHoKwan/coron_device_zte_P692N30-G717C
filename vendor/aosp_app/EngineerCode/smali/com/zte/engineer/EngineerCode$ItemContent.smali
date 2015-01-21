.class Lcom/zte/engineer/EngineerCode$ItemContent;
.super Ljava/lang/Object;
.source "EngineerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/EngineerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemContent"
.end annotation


# instance fields
.field private checked:Z

.field private pass:Z

.field final synthetic this$0:Lcom/zte/engineer/EngineerCode;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/engineer/EngineerCode;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "checked"
    .parameter "pass"

    .prologue
    const/4 v0, 0x0

    .line 486
    iput-object p1, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->this$0:Lcom/zte/engineer/EngineerCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->checked:Z

    .line 484
    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->pass:Z

    .line 487
    iput-object p2, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->title:Ljava/lang/String;

    .line 488
    iput-boolean p3, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->checked:Z

    .line 489
    iput-boolean p4, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->pass:Z

    .line 490
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->checked:Z

    return v0
.end method

.method public isPassed()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->pass:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->checked:Z

    .line 500
    return-void
.end method

.method public setPassed(Z)V
    .locals 0
    .parameter "pass"

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->pass:Z

    .line 519
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->title:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/engineer/EngineerCode$ItemContent;->checked:Z

    .line 505
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
