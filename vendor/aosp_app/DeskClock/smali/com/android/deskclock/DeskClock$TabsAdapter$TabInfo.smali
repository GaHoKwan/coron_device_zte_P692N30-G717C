.class final Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/deskclock/DeskClock$TabsAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock$TabsAdapter;Ljava/lang/Class;I)V
    .locals 2
    .parameter
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->this$1:Lcom/android/deskclock/DeskClock$TabsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 295
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    const-string v1, "tab_position"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public getPosition()I
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    const-string v1, "tab_position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
