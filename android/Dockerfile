FROM gradle:7.5-jdk17
ENV ANDROID_SDK_ROOT /sdk
ENV PATH $PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
ENV PATH $PATH:$ANDROID_SDK_ROOT/platform-tools

RUN apt-get update && apt-get install -y wget unzip ruby-full && apt-get clean

RUN gem install bundler

RUN mkdir -p /sdk/cmdline-tools

RUN wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip \
       -O /sdk/cmdline-tools/tools.zip && \
       unzip /sdk/cmdline-tools/tools.zip -d /sdk/cmdline-tools && \
       mv /sdk/cmdline-tools/cmdline-tools /sdk/cmdline-tools/latest && \
       rm /sdk/cmdline-tools/tools.zip

RUN yes | sdkmanager --licenses && \
       sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

RUN sdkmanager --list
