.class public Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "ContactSmsCallLogItem.java"


# instance fields
.field private isChecked:Z

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked:Z

    .line 24
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->number:Ljava/lang/String;

    .line 16
    return-void
.end method
