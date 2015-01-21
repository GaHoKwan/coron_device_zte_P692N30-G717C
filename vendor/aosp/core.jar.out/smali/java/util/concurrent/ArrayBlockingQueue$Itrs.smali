.class Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Itrs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    }
.end annotation


# static fields
.field private static final LONG_SWEEP_PROBES:I = 0x10

.field private static final SHORT_SWEEP_PROBES:I = 0x4


# instance fields
.field cycles:I

.field private head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field private sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p2, initial:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 799
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    .line 800
    return-void
.end method


# virtual methods
.method doSomeSweeping(Z)V
    .locals 9
    .parameter "tryHarder"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v7, 0x0

    .line 813
    if-eqz p1, :cond_1

    const/16 v5, 0x10

    .line 815
    .local v5, probes:I
    :goto_0
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 818
    .local v6, sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-nez v6, :cond_2

    .line 819
    const/4 v2, 0x0

    .line 820
    .local v2, o:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 821
    .local v3, p:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x1

    .line 828
    .local v4, passedGo:Z
    :goto_1
    if-lez v5, :cond_0

    .line 829
    if-nez v3, :cond_4

    .line 830
    if-eqz v4, :cond_3

    .line 860
    :cond_0
    if-nez v3, :cond_9

    :goto_2
    iput-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 861
    :goto_3
    return-void

    .line 813
    .end local v2           #o:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v3           #p:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v4           #passedGo:Z
    .end local v5           #probes:I
    .end local v6           #sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_1
    const/4 v5, 0x4

    goto :goto_0

    .line 823
    .restart local v5       #probes:I
    .restart local v6       #sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_2
    move-object v2, v6

    .line 824
    .restart local v2       #o:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 825
    .restart local v3       #p:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x0

    .restart local v4       #passedGo:Z
    goto :goto_1

    .line 832
    :cond_3
    const/4 v2, 0x0

    .line 833
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 834
    const/4 v4, 0x1

    .line 836
    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 837
    .local v0, it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 838
    .local v1, next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 840
    :cond_5
    const/16 v5, 0x10

    .line 842
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 843
    iput-object v7, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 844
    if-nez v2, :cond_6

    .line 845
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 846
    if-nez v1, :cond_7

    .line 848
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v7, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    goto :goto_3

    .line 853
    :cond_6
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 857
    :cond_7
    :goto_4
    move-object v3, v1

    .line 828
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 855
    :cond_8
    move-object v2, v3

    goto :goto_4

    .end local v0           #it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1           #next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_9
    move-object v7, v2

    .line 860
    goto :goto_2
.end method

.method elementDequeued()V
    .locals 1

    .prologue
    .line 951
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v0, :cond_1

    .line 952
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    goto :goto_0
.end method

.method queueIsEmpty()V
    .locals 4

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v3, 0x0

    .line 935
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v1, p:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_0
    if-eqz v1, :cond_1

    .line 936
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 937
    .local v0, it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 939
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    .line 935
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_0

    .line 942
    .end local v0           #it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    :cond_1
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 943
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 944
    return-void
.end method

.method register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p1, itr:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    invoke-direct {v0, p0, p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;-><init>(Ljava/util/concurrent/ArrayBlockingQueue$Itrs;Ljava/util/concurrent/ArrayBlockingQueue$Itr;Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 869
    return-void
.end method

.method removedAt(I)V
    .locals 6
    .parameter "removedIndex"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v5, 0x0

    .line 906
    const/4 v2, 0x0

    .local v2, o:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v3, p:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_0
    if-eqz v3, :cond_3

    .line 907
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 908
    .local v0, it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 909
    .local v1, next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->removedAt(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 912
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 913
    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 914
    if-nez v2, :cond_1

    .line 915
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 921
    :goto_1
    move-object v3, v1

    .line 922
    goto :goto_0

    .line 917
    :cond_1
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_1

    .line 919
    :cond_2
    move-object v2, v3

    goto :goto_1

    .line 923
    .end local v0           #it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1           #next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v4, :cond_4

    .line 924
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 925
    :cond_4
    return-void
.end method

.method takeIndexWrapped()V
    .locals 6

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v5, 0x0

    .line 878
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 879
    const/4 v2, 0x0

    .local v2, o:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v3, p:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_0
    if-eqz v3, :cond_3

    .line 880
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 881
    .local v0, it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 882
    .local v1, next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->takeIndexWrapped()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 885
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 886
    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 887
    if-nez v2, :cond_1

    .line 888
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 894
    :goto_1
    move-object v3, v1

    .line 895
    goto :goto_0

    .line 890
    :cond_1
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_1

    .line 892
    :cond_2
    move-object v2, v3

    goto :goto_1

    .line 896
    .end local v0           #it:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1           #next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v4, :cond_4

    .line 897
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 898
    :cond_4
    return-void
.end method
