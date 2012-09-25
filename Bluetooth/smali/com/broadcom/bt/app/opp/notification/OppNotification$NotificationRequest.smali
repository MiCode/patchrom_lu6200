.class Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;
.super Lcom/broadcom/bt/app/opp/data/Job;
.source "OppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/OppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationRequest"
.end annotation


# instance fields
.field public mNotificationType:I

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;ILcom/broadcom/bt/app/opp/data/Job;)V
    .locals 0
    .parameter
    .parameter "requestType"
    .parameter "request"

    .prologue
    .line 960
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;->this$0:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 961
    iput p2, p0, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;->mNotificationType:I

    .line 962
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;->copy(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 963
    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;ILcom/broadcom/bt/app/opp/data/Job;Lcom/broadcom/bt/app/opp/notification/OppNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 957
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/notification/OppNotification$NotificationRequest;-><init>(Lcom/broadcom/bt/app/opp/notification/OppNotification;ILcom/broadcom/bt/app/opp/data/Job;)V

    return-void
.end method


# virtual methods
.method public copy(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 2
    .parameter "copy"

    .prologue
    .line 966
    iget v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    iput v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 967
    iget v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    iput v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 968
    iget-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 969
    iget-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    .line 970
    iget-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    .line 971
    iget-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mErrorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mErrorCode:Ljava/lang/String;

    .line 972
    iget-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mErrorInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mErrorInfo:Ljava/lang/String;

    .line 973
    iget v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    iput v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    .line 974
    iget-wide v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 975
    iget-boolean v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    .line 983
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 984
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 985
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 986
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 987
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 988
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 989
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 990
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 991
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 992
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 993
    iget-wide v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 994
    iget-wide v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 995
    iget-wide v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 996
    iget-boolean v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 997
    return-void
.end method
