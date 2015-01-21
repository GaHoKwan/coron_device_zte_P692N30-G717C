.class Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$1;
.super Ljava/lang/Object;
.source "NewStaticsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->handleAndSortUsageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zte/heartyservice/power/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$1;->this$1:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/heartyservice/power/BatterySipper;Lcom/zte/heartyservice/power/BatterySipper;)I
    .locals 3
    .parameter "sipper1"
    .parameter "sipper2"

    .prologue
    .line 1116
    invoke-virtual {p2}, Lcom/zte/heartyservice/power/BatterySipper;->getSortValue()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Lcom/zte/heartyservice/power/BatterySipper;->getSortValue()D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1107
    check-cast p1, Lcom/zte/heartyservice/power/BatterySipper;

    .end local p1
    check-cast p2, Lcom/zte/heartyservice/power/BatterySipper;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter$1;->compare(Lcom/zte/heartyservice/power/BatterySipper;Lcom/zte/heartyservice/power/BatterySipper;)I

    move-result v0

    return v0
.end method
