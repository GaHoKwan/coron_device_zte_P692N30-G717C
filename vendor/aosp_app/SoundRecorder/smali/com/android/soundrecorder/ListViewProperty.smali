.class public Lcom/android/soundrecorder/ListViewProperty;
.super Ljava/lang/Object;
.source "ListViewProperty.java"


# instance fields
.field private mCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPos:I

.field private mTop:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter "curPos"
    .parameter "top"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/soundrecorder/ListViewProperty;->mCheckedList:Ljava/util/List;

    .line 23
    iput p2, p0, Lcom/android/soundrecorder/ListViewProperty;->mCurPos:I

    .line 24
    iput p3, p0, Lcom/android/soundrecorder/ListViewProperty;->mTop:I

    .line 25
    return-void
.end method


# virtual methods
.method public getCheckedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/soundrecorder/ListViewProperty;->mCheckedList:Ljava/util/List;

    return-object v0
.end method

.method public getCurPos()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/soundrecorder/ListViewProperty;->mCurPos:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/soundrecorder/ListViewProperty;->mTop:I

    return v0
.end method

.method public setCheckedList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, checkedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/soundrecorder/ListViewProperty;->mCheckedList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setCurPos(I)V
    .locals 0
    .parameter "curPos"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/soundrecorder/ListViewProperty;->mCurPos:I

    .line 63
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/soundrecorder/ListViewProperty;->mTop:I

    .line 82
    return-void
.end method
