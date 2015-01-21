.class Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgrProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field public context:Landroid/content/Context;

.field public mFoundForSlot:Landroid/util/SparseBooleanArray;

.field private mHandler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;

.field public mIsSingleQuery:Z

.field public mSimNameForSlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSimNumberForSlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextField:Landroid/widget/EditText;

.field private mToken:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;I)V
    .locals 1
    .parameter "number"
    .parameter "handler"
    .parameter "token"

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNumberForSlot:Landroid/util/SparseArray;

    .line 487
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mSimNameForSlot:Landroid/util/SparseArray;

    .line 488
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mFoundForSlot:Landroid/util/SparseBooleanArray;

    .line 492
    iput p1, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->contactNum:I

    .line 493
    iput-object p2, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mHandler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;

    .line 494
    iput p3, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mToken:I

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getQueryHandler()Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
    .locals 1

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mHandler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextField(Landroid/widget/EditText;)V
    .locals 1
    .parameter "editText"

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mTextField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
