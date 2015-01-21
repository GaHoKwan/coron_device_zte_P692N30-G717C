.class Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;
.super Ljava/lang/Object;
.source "NetIdleHoursSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetIdleHoursSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "timeButtonListener"
.end annotation


# instance fields
.field private mTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

.field final synthetic this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    .line 240
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 244
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    new-instance v2, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-direct {v2, v3, p1}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$TimeListener;-><init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;Landroid/view/View;)V

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->tHour:I
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->access$200(Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;

    #getter for: Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->tMinute:I
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->access$300(Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)I

    move-result v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 248
    .local v0, tp:Landroid/app/TimePickerDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 249
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 250
    return-void
.end method
