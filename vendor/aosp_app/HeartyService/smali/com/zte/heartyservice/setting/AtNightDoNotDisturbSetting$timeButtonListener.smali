.class Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;
.super Ljava/lang/Object;
.source "AtNightDoNotDisturbSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "timeButtonListener"
.end annotation


# instance fields
.field private mTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

.field final synthetic this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    .line 221
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 226
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    new-instance v2, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {v2, v3, p1}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$TimeListener;-><init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;Landroid/view/View;)V

    iget-object v3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->tHour:I
    invoke-static {v3}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->access$000(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;

    #getter for: Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->tMinute:I
    invoke-static {v4}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->access$100(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)I

    move-result v4

    iget-object v5, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 233
    .local v0, tp:Landroid/app/TimePickerDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 234
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 235
    return-void
.end method
