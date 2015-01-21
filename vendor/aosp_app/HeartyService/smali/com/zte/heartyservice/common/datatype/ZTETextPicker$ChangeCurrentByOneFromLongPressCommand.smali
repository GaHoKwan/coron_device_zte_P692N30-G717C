.class Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "ZTETextPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/ZTETextPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 1175
    iput-boolean p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 1176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #calls: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrentByOne(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$100(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;Z)V

    .line 1180
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    #getter for: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$400(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1181
    return-void
.end method
