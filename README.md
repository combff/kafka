# kafka

✔️ &nbsp;"zookeeper" 와 "kafka" => 2개의 도커 생성
<br>컴포즈 파일로 스택을 생성하면 zookeeper와 kafka 두 서비스가 만들어진다. 
<br>그리고 네트워크를 기본으로 생성한다. 이 네트워크는 오버레이 네트워크로 스택에 속한 서비스를 위한 네트워크이다. 
<br>스택에 속한 서비스는 서비스 이름을 사용해서 다른 서비스의 컨테이너와 통신할 수 있다.

#### docker stack deploy -C docker.yml app
그러면 app 이라는 네트워크 생성
<br>app_zookeeper 와 app_kafka 서로 통신가능!

✔️ &nbsp;zookeeper.properties 와 server.properties 설정
<br>server.properties의 listeners=PLAINTEXT://0.0.0.0:9092로 설정했지만 다른 네트워크에서 접근하지 못하는 현상이 발생.
<br>그럴때는 추가로 advertised.listeners=PLAINTEXT://YOUR_FLOATING_IP:9092를 통해 
<br>다른 Producer / Consumer에게 FLOATING_IP로 접속할 수 있도록 알려줘야 한다.



