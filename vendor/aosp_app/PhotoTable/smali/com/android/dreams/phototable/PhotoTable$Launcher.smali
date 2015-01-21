.class Lcom/android/dreams/phototable/PhotoTable$Launcher;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Launcher"
.end annotation


# instance fields
.field private final mTable:Lcom/android/dreams/phototable/PhotoTable;

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoTable;Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 0
    .parameter
    .parameter "table"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$Launcher;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTable$Launcher;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$Launcher;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$Launcher;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mDropPeriod:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$000(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 62
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$Launcher;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoTable;->launch()V

    .line 63
    return-void
.end method
