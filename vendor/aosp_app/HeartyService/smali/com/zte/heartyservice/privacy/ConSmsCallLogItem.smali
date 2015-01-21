.class public Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "ConSmsCallLogItem.java"


# instance fields
.field private checkBox:Z

.field private comment:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter "refName"
    .parameter "comment"
    .parameter "drawable"
    .parameter "checkBox"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->comment:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-boolean p4, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->checkBox:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isCheckBox()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->checkBox:Z

    return v0
.end method

.method public setCheckBox(Z)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->checkBox:Z

    .line 44
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->comment:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method
